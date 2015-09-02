class Changethewordtable < ActiveRecord::Migration
  def change
    add_column :byenotes, :donate_select, :string, :default => 'no'
    add_column :byenotes, :donate_heart, :boolean, :default => false
    add_column :byenotes, :donate_lung, :boolean, :default => false
    add_column :byenotes, :donate_liver, :boolean, :default => false
    add_column :byenotes, :donate_pancreas, :boolean, :default => false
    add_column :byenotes, :donate_kidney, :boolean, :default => false
    add_column :byenotes, :donate_smll_intestine, :boolean, :default => false
    add_column :byenotes, :donate_cornea, :boolean, :default => false
    add_column :byenotes, :donate_skin, :boolean, :default => false
    add_column :byenotes, :donate_skeleton, :boolean, :default => false
    add_column :byenotes, :donate_heart_valve, :boolean, :default => false
    add_column :byenotes, :donate_artery, :boolean, :default => false
    add_column :byenotes, :hospice_palliative, :boolean, :default => false
    add_column :byenotes, :hospice_no_cpr, :boolean, :default => false
    add_column :byenotes, :hospice_life_sustaining, :boolean, :default => false
  end
end
