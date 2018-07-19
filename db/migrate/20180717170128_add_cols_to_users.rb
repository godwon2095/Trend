class AddColsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :shape, :integer
    add_column :users, :hair, :integer
    add_column :users, :skinton, :integer
    add_column :users, :category, :integer
    add_column :users, :area, :integer
    add_column :users, :birth, :date
    add_column :users, :image, :string
    add_column :users, :check_info, :integer
    add_column :users, :phone, :string
    add_column :users, :information, :text
    add_column :users, :adress, :string
  end
end
