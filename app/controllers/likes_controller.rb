class LikesController < ApplicationController

  def create
    skip_authorization

    @wish = Wish.find(params[:wish_id])
    # binding.pry
    @like = Like.new(user: current_user, wish: @wish, liked: params[:liked])

    if @like.save!
      create_match(@wish) if mutual?(@wish)

      respond_to do |format|
        format.html {redirect_to match_path(@match)}
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
    other_like(wish).wish.update(match: @match)
  end

  def mutual?(wish)
    # binding.pry
    params[:liked] == "true" && other_like(wish)
  end

  def other_like(wish)
    wish.user.likes.where(liked: true).joins(:wish).where(wishes: { user_id: current_user.id }).first
  end
end
