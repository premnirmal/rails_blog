class ArticlesController < ApplicationController
  respond_to :html
  before_filter :find_article, only: [:show, :edit, :update, :destroy]
  before_filter :get_articles

  def index
    respond_with(@articles)
  end

  def show
    respond_with(@article)
  end

  def new
    respond_with(@article)
  end

  def edit
    respond_with(@article)
  end

  def create
    @article = Article.new(params[:article])
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    flash_notice('updated') if @article.update_attributes(params[:article])
    respond_with(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  private

  def get_articles
    @navarticles = Article.select('title, created_at, id').order('created_at DESC')
    @articles = Article.order('created_at DESC').limit(4)
    @tags = Tag.select('name, id').order('name')
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def flash_notice(msg)
    flash[:notice] = "#{@article.title} #{msg}"
  end

end
