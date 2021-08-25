class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    authorize @match
  end

  def index
    # dashboard
    @matches = policy_scope(Match)
  end
end
