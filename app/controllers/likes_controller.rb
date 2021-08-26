class LikesController < ApplicationController

  def create
    @wish = Wish.find(params[:id])
    @user = current_user
    @liked = params[:liked] == "true"
    @like = Like.new(user: @user, wish: @wish, liked: @liked)
    if @like.save
      if @liked == true
        create_match(@wish)
        redirect_to match_path(@match)
      else
        redirect_to wishes_path
      end
    else
        redirect_to wishes_path, error: "Could not like"
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
