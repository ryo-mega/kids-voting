class CandidatesController < ApplicationController
  before_action :require_user_logged_in
  def index
    @candidates = Candidate.order(id: :desc).page(params[:page]).per(25)
    @election = Election.find(params[:election_id])
  end
end
