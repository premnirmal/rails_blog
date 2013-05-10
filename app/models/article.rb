class Article < ActiveRecord::Base
  attr_accessible :body, :title, :created_at, :updated_at
  validates_presence_of [:body, :title]

  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings  
  attr_accessible :tag_ids
  attr_reader :tag_names

  def tag_names
    @tag_names || tags.map(&:name).join(', ')
  end
  
end
