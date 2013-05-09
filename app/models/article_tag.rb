class ArticleTag < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
  attr_accessible :article_id, :tag_id
end
