class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password

  has_secure_password

  has_many :gang_leaderships, class_name: "Gang", foreign_key: "user_id"
  has_many :gang_members, through: :gangs, source: :member

  has_many :gang_memberships, class_name: "Gang", foreign_key: "member_id"
  has_many :gang_leaders, through: :gang_memberships, source: :user

  def num_gangs
    gang_leaderships.count('name', distinct: true)
  end

  def gang_members_of(name)
    memberships = gang_leaderships
                  .joins('INNER JOIN users ON gangs.member_id = users.id')
                  .where('gangs.name = ?', name)
                  .includes(:member)
    members = []
    memberships.each do |membership|
      members << membership.member
    end
    members
  end

end
