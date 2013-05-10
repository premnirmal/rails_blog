class Tag < ActiveRecord::Base
  has_many :article_tags
  has_many :articles, :through => :article_tags, :foreign_key => :article_id
  attr_accessible :name, :created_at, :updated_at
  validates_presence_of :name, :presence => true, :uniqueness => true

  accepts_nested_attributes_for :articles, reject_if: :all_blank

  attr_accessible :articles_attributes

  def to_s
    name
  end

end
