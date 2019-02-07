class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :sellable_good
  has_many :bids
  belongs_to :bid, optional: true
end
