class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :category
      t.string :content
      t.string :user
      t.integer :likes

      t.timestamps
    end
  end
end
