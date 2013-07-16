class CreateGangPosts < ActiveRecord::Migration
  def change
    create_table :gang_posts do |t|
      t.integer :gang_id
      t.integer :post_id

      t.timestamps
    end
  end
end
