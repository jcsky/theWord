class AddUserImage < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :phone, :string
  end
end
