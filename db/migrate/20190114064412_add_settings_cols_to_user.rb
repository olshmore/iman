class AddSettingsColsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :income_start, :integer, default: 0
    add_column :users, :income_end, :integer, default: 200000
    add_column :users, :years_start, :integer, default: 18
    add_column :users, :years_end, :integer, default: 40
    add_column :users, :credit_score_start, :integer, default: 300
    add_column :users, :credit_score_end, :integer, default: 850
    add_column :users, :male, :boolean, default: true
    add_column :users, :female, :boolean, default: true
    add_column :users, :categories, :string, array: true, default: []
  end
end
