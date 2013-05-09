class Article < ActiveRecord::Base
  attr_accessible :body, :title, :created_at, :updated_at
  has_many :article_tags
  has_many :tags, :through => :article_tags, :foreign_key => :tag_id

  accepts_nested_attributes_for :tags, reject_if: :all_blank, :allow_destroy => true

  attr_accessible :tags_attributes, :tag

  validates_presence_of [:body, :title]

  def title=(val)
    if val != nil
      write_attribute(:title, val.titleize) 
    end
  end

end
