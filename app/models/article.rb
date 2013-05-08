class Article < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :tags, dependent: :destroy

  accepts_nested_attributes_for :tags, allow_destroy: true, reject_if: :all_blank
  attr_accessible :tags_attributes
      
end
