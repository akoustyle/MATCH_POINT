class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    authorize @match
  end

  def index
    # dashboard ca marche pas attention
    matches = policy_scope(Match)
  end
end
