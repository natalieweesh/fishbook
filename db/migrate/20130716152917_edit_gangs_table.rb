class EditGangsTable < ActiveRecord::Migration
  def change
    remove_column :gangs, :member_id
    add_column :gangs, :bio, :text
  end
end
