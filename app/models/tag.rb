class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :taggings, :dependent => :destroy  
  has_many :articles, :through => :taggings
  attr_accessible :article_ids

  validates :name, :uniqueness => true

  def to_s
    name
  end

end
