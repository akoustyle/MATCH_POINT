class LikesController < ApplicationController

  def create
    skip_authorization

    @wish = Wish.find(params[:wish_id])
    @like = Like.new(user: current_user, wish: @wish, liked: params[:liked])
    if @like.save!
      create_match(@wish)

      respond_to do |format|
        # format.html {redirect_to match_path(@match)}
        format.json { render json: { ok: true } }
      end
    end
  end

  private

  def create_match(wish)
    location = Location.where(sport: wish.sport).sample
    @match = Match.new(location: location)
    @match.save
    wish.update(match: @match)
  end

end
