class PagesController < HighVoltage::PagesController
  before_filter :get_all

  private
  def get_all
    @articles = Article.all
    @tags = Tag.all
  end

end
