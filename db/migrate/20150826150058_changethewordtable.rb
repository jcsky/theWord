class Changethewordtable < ActiveRecord::Migration
  def change
    add_column :byenotes, :donate_select, :string
    add_column :byenotes, :donate_heart, :boolean
    add_column :byenotes, :donate_lung, :boolean
    add_column :byenotes, :donate_liver, :boolean
    add_column :byenotes, :donate_pancreas, :boolean
    add_column :byenotes, :donate_kidney, :boolean
    add_column :byenotes, :donate_smll_intestine, :boolean
    add_column :byenotes, :donate_cornea, :boolean
    add_column :byenotes, :donate_skin, :boolean
    add_column :byenotes, :donate_skeleton, :boolean
    add_column :byenotes, :donate_heart_valve, :boolean
    add_column :byenotes, :donate_artery, :boolean
    add_column :byenotes, :hospice_palliative, :boolean
    add_column :byenotes, :hospice_no_cpr, :boolean
    add_column :byenotes, :hospice_life_sustaining, :boolean
  end
end
