class CreateGangs < ActiveRecord::Migration
  def change
    create_table :gangs do |t|
      t.integer :user_id
      t.integer :member_id

      t.timestamps
    end
  end
end
