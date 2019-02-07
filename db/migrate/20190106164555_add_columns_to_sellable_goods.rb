class AddColumnsToSellableGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :sellable_goods, :description, :text
    add_column :sellable_goods, :rating, :float
    add_column :sellable_goods, :firm, :string
  end
end
