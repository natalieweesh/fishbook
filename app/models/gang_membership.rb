class GangMembership < ActiveRecord::Base
  attr_accessible :user_id, :gang_id

  belongs_to :gang
  belongs_to :user
end
