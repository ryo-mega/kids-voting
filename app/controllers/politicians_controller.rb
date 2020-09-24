class PoliticiansController < ApplicationController
    before_action :require_user_logged_in
  def index
    @politicians = Politician.order(id: :desc).page(params[:page]).per(25)
  end
end
