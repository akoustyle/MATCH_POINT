class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    authorize @match
    locations = Location.where(sport_id: @match.wishes.first.sport_id)
    # @match.wishes.each do |wish|
    locations.each do |location|
      if @match.wishes.last.user != current_user
        @marker =[{
          lat: location.latitude,
          lng: location.longitude,
          info_window: render_to_string(partial: "info_window", locals: { location: location }),
          image_url: helpers.asset_url('blue-marker.jpg')
        }]
      end
    end
  end

  def index
    @matches = policy_scope(Match)
  end

  def create
  end

  def destroy
    @match = Match.find(params[:id])
    authorize @match
    @match.destroy
    redirect_to matches_path
  end
end
