class TagsController < InheritedResources::Base
  respond_to :html
  before_filter :find_tag, only: [:show, :edit, :update, :destroy]
  before_filter :get_tags

  def index
    respond_with(@tags)
  end

  def show
    respond_with(@tag)
  end

  def new
    respond_with(@tag)
  end

  def edit
    respond_with(@tag)
  end

  def create
    @tag = Tag.new(params[:tag])
    respond_to do |format|
      if @tag.save
        format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
        format.json { render json: @tag, status: :created, location: @tag }
      else
        format.html { render action: "new" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    flash_notice('updated') if @tag.update_attributes(params[:tag])
    respond_with(@tag)
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    respond_to do |format|
      format.html { redirect_to tags_url }
      format.json { head :no_content }
    end
  end

  private

  def get_tags
    @navarticles = Article.select('title, created_at, id').order('created_at DESC')
    @tags = Tag.order('name')
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end

  def flash_notice(msg)
    flash[:notice] = "#{@tag.title} #{msg}"
  end

end
