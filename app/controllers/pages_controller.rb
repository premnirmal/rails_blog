class PagesController < HighVoltage::PagesController
  before_filter :get_all

  private
  def get_all
    @navarticles = Article.select('title, created_at, id').order('created_at DESC')
    @tags = Tag.order('name')
  end

end
