class CreditPurchase < ApplicationRecord
  include AASM
  has_one :sellable_good
  # has_many :bids

  aasm do
    state :application_submitted, :initial => true
    state :application_expired, :item_unavailable
    state :bids_placed
    state :bid_selected
    state :contract_initiated
    state :contract_signed
    state :awaiting_delivery
    state :loan_active
    state :client_defaulted
    state :loan_paid_off

    event :no_bids_submitted do
      transitions :from => :application_submitted, :to => :application_expired
    end

    event :bid_placed do
      transitions :from => [:application_submitted, :bids_placed],
                  :to => :bids_placed
    end

    event :bid_selected do
      transitions :from => :bids_placed, :to => :bid_selected
    end

    event :bid_expired do
      transitions :from => :bid_selected, :to => :application_submitted
    end

    event :investor_confirmed_bid do
      transitions :from => :bid_selected, :to => :contract_initiated
    end

    event :merchant_cosigned do
      transitions :from => :contract_initiated, :to => :contract_signed
    end

    event :merchant_unavailable do
      transitions :from => :contract_initiated, :to => :item_unavailable
    end

    event :shipped do
      transitions :from => :contract_signed, :to => :awaiting_delivery
    end

    event :delivery_confirmed do
      transitions :from => :awaiting_delivery, :to => :loan_active
    end

    event :payment do
      transitions :from => :loan_active, :to => :loan_active
    end

    event :paid_off do
      transitions :from => :loan_active, :to => :loan_paid_off
    end

    event :default do
      transitions :from => :loan_active, :to => :client_defaulted
    end

  end
end
