class Changethewordtable < ActiveRecord::Migration
  def change
    rename_table :thewords, :byenotes
  end
end
