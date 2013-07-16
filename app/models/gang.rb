class Gang < ActiveRecord::Base
  attr_accessible :bio, :user_id, :name, :member_ids, :post_ids

  belongs_to :owner, :foreign_key => :user_id, :class_name => "User"
  has_many :gang_memberships, :foreign_key => :gang_id
  has_many :members, :through => :gang_memberships, :source => :user

  has_many :gang_posts
  has_many :posts, through: :gang_posts

end
