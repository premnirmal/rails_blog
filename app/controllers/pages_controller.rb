class PagesController < HighVoltage::PagesController
  before_filter :get_all

  private
  def get_all
    @navarticles = Article.select('title, created_at, id').order('created_at DESC')
      .group_by { |article| article.created_at.strftime("%B %Y") }
    @tags = Tag.select('name, id').order('name')
  end

end
