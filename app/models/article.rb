class Article < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :article_tags
  has_many :tags, :through => :article_tags, :foreign_key => :tag_id

  accepts_nested_attributes_for :tags, reject_if: :all_blank

  attr_accessible :tags_attributes, :tag

  validates_presence_of [:body, :title]

end
