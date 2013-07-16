class AddNameToGang < ActiveRecord::Migration
  def change
    add_column :gangs, :name, :string
  end
end
