class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.references :user, foreign_key: true
      t.string :status
      # t.integer :months
      # t.integer :percent
      # t.integer :monthly_payment
      # t.integer :total_payment
      t.references :bid
      t.references :sellable_good, foreign_key: true

      t.timestamps
    end
  end
end
