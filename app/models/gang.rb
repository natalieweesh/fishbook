class Gang < ActiveRecord::Base
  attr_accessible :member_id, :user_id, :name

  belongs_to :user
  belongs_to :member, class_name: "User"
end
