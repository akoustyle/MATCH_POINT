class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    authorize @match
  end

  def index
    # dashboard ca marche pas attention
    matches = policy_scope(Match)
    @next_match = matches.select { |match| match.wish[:date] == Date.today }
    @past_matches = matches.reject { |match| match.wish[:date] == Date.today }
  end
end
