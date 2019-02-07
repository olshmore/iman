class SellableGood < ApplicationRecord
  has_many :sellable_good_images
  belongs_to :category

  scope :phones, -> { where(category_id: Category.find_by_name('Electronics').id) }
  scope :parfum, -> { where(category_id: Category.find_by_name('Beauty & Health').id) }
end
