class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :from
      t.string :to
      t.date :date
      t.integer  :seat
      t.decimal  :price,      :precision => 3, :scale => 0
      t.boolean  :bagroom
      t.integer  :user_id

      t.timestamps
    end
    add_index :posts, [:user_id]
  end
end
