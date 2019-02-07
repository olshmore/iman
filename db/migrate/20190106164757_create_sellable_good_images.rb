class CreateSellableGoodImages < ActiveRecord::Migration[5.2]
  def change
    create_table :sellable_good_images do |t|
      t.references :sellable_good, foreign_key: true
      t.attachment :url

      t.timestamps
    end
  end
end
