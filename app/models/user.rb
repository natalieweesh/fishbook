class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password

  has_secure_password

  has_many :gangs

  has_many :gang_memberships #, :foreign_key => :user_id



end
