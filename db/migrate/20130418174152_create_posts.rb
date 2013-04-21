class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :from
      t.string :to
      t.date :date

      t.timestamps
    end
  end
end
