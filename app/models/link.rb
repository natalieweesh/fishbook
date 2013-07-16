class Link < ActiveRecord::Base
  attr_accessible :content

  has_many :post_links
  has_many :posts, through: :post_links
end
