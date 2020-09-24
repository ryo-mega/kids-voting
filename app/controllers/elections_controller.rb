class ElectionsController < ApplicationController
    before_action :require_user_logged_in
  def index
    @elections = Election.order(id: :desc).page(params[:page]).per(25)
    # @candidate = Candidate.find(params[:election_id])
  end
end
