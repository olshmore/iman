class AddCategoryIdToSellableGoods < ActiveRecord::Migration[5.2]
  def change
    add_reference :sellable_goods, :category, foreign_key: true
  end
end
