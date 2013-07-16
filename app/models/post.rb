class Post < ActiveRecord::Base
  attr_accessible :body, :user_id, :link_ids, :title, :gang_ids, :link_ids, :links_attributes

  belongs_to :user

  has_many :post_links, class_name: 'PostLink'
  has_many :links, through: :post_links

  has_many :gang_posts
  has_many :gangs, through: :gang_posts

  accepts_nested_attributes_for :links, :reject_if => :all_blank
end
