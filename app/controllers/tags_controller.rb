class TagsController < ApplicationController
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
      if @tag.save!
        flash_notice('created')
      end
    respond_with(@tag)
  end

  def update
    flash_notice('updated') if @tag.update_attributes(params[:tag])
    respond_with(@tag)
  end

  def destroy
    @tag.destroy
    flash_notice('deleted')
  end

  private

  def get_tags
    @tags = Tag.all
    @articles = Article.all
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end

  def flash_notice(msg)
    flash[:notice] = "#{@tag.name} #{msg}"
  end

end
