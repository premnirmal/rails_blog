class PagesController < HighVoltage::PagesController
  before_filter :get_all

  private
  def get_all
    @navarticles = Article.select('title, created_at, id').order('created_at DESC')
      .group_by { |article| article.created_at.strftime("%B %Y") }
    @tags = Tag.joins(:taggings).select('tags.*, count(tag_id) as "tag_count"')
      .group(:tag_id).order(' tag_count DESC')
  end

end
