class CreateCreditPurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_purchases do |t|
      t.references :sellable_good, index: true

      t.timestamps
    end

    add_column :credit_purchases, :aasm_state, :string
  end
end
