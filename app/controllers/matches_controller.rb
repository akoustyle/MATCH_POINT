class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    authorize @match
    @match.wishes.each do |wish|
      if wish.user != current_user
        @marker =[{
          lat: wish.latitude,
          lng: wish.longitude,
          info_window: render_to_string(partial: "info_window", locals: { wish: wish }),
          image_url: helpers.asset_url('blue-marker.jpg')
        }]
      end
    end
  end

  def index
    @matches = policy_scope(Match)
  end
end
