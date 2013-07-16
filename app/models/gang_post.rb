class GangPost < ActiveRecord::Base
  attr_accessible :gang_id, :post_id

  belongs_to :gang
  belongs_to :post
end
