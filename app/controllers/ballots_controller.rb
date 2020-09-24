class BallotsController < ApplicationController
  before_action :require_user_logged_in
  def create
    @election = Election.find(params[:election_id])
    @ballot = @election.ballots.build(user_id: current_user.id, candidate_id: params[:candidate_id])
    if @ballot.save
      flash[:success] = '投票ありがとうございました。'
      redirect_to candidate_ballot_thanks_path(ballot_id: @ballot.id)
    else
      flash[:danger] = '投票失敗いたしました。'
      redirect_to election_candidates_path(election_id: @election.id)
    end
  end
  
  def thanks
    @ballot = Ballot.find(params[:ballot_id])
  end
end
