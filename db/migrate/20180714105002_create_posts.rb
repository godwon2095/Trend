class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :view_count, default: 0
      t.string :image
      t.references :user

      t.timestamps
    end
  end
end
