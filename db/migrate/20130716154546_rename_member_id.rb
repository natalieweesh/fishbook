class RenameMemberId < ActiveRecord::Migration
  def change
    rename_column :gang_memberships, :member_id, :user_id
  end

end
