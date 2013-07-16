class CreateGangMemberships < ActiveRecord::Migration
  def change
    create_table :gang_memberships do |t|
      t.integer :member_id
      t.integer :gang_id

      t.timestamps
    end
  end
end
