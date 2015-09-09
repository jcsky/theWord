class AddUserPageurl < ActiveRecord::Migration
  def change
    add_column :users, :page_url, :string
    add_index :users, :page_url,                unique: true
  end

end
