class CreateTheword < ActiveRecord::Migration
  def change
    create_table :thewords do |t|
      t.integer 'user_id'
      t.json 'organ'
      t.json 'hospice'
      t.json 'funeral'
      t.string 'some_message'
    end
    add_index :thewords, :user_id
  end
end
