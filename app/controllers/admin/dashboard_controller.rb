class Admin::DashboardController < AdminController
  before_action do
    redirect_to new_user_session_path unless user_signed_in?
  end
  def index
  end

  def settings
  end

  def manual
  end

  def save_settings
    User.where(role: 'investor').first.update_attributes(
      income_start: params[:income_start],
      income_end: params[:income_end],
      years_start: params[:age_start],
      years_end: params[:age_end],
      credit_score_start: params[:credit_score_start],
      credit_score_end: params[:credit_score_end],
      male: params[:male],
      female: params[:female],
      categories: params[:categories]
    )
    redirect_to "/admin/settings", :flash => { :success => "Successfully updated!" }
  end

  def deposit
  end
end
