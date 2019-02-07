class PagesController < ApplicationController
  def landing
  end

  def account
  end

  def buy
    loan = Loan.create!(user: current_user, status: 'Review Bids', sellable_good_id: params[:sellable_good_id])
    Bid.create!(percent: 30, months: 12, loan: loan)
    Bid.create!(percent: 25, months: 10, loan: loan)
    Bid.create!(percent: 18, months: 11, loan: loan)
    Bid.create!(percent: 23, months: 11, loan: loan)
    Bid.create!(percent: 19, months: 9, loan: loan)
    Bid.create!(percent: 13, months: 5, loan: loan)
    Bid.create!(percent: 20, months: 12, loan: loan)
    Bid.create!(percent: 23, months: 11, loan: loan)
    Bid.create!(percent: 17, months: 8, loan: loan)
    Bid.create!(percent: 22, months: 10, loan: loan)
    redirect_to '/account', flash: { success: 'Your request was successfully sent!' }
  end

  def accept_bid
    loan = params[:loan_id]
    bid = params[:bid_id]
    Loan.find(loan).update_attributes(bid_id: bid, status: 'Shipped')
    redirect_to '/account', flash: { success: 'Successfully updated!' }
  end
end
