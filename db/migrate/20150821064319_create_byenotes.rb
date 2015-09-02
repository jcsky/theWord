class CreateByenotes < ActiveRecord::Migration
  def change
    create_table :byenotes do |t|
      t.integer 'user_id'
      t.text 'funeral'
      t.text 'some_message'
    end
    add_index :byenotes, :user_id
  end
end
