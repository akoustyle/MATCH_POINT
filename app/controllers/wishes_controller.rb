class WishesController < ApplicationController
  def index
    @wishes = policy_scope(Wish).order(created_at: :desc)

  #   if params.dig(:search, :query).present?
  #     @wishes = @wishes.search_by_sport(params.dig(:search, :query))
  end

  # def show

  #end

  def new
    @wish = Wish.new
  end

  def create

    # @wish = Wish.new(wish_params)
    # @wish.user = current_user
    # @wish.sport = @sport
    # if @wish.save
    #   render_to wish_path(@wish)
    # else
    #   render new
    # end
  end

  private

  def wish_params
    # params.require(:wish).permit(:sport_id, :user_id, :date, :match_id)
  end
end
