class CreateSellableGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :sellable_goods do |t|
      t.string  :img_url
      t.string  :name
      t.numeric :price

      t.timestamps
    end
  end
end
