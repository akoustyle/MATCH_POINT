class WishesController < ApplicationController
  def index
    @wishes = policy_scope(Wish).where.not(id: current_user.likes.pluck(:wish_id))
    @user_wish = current_user.wishes.where(date: Date.today).last
  #   if params.dig(:search, :query).present?
  #     @wishes = @wishes.search_by_sport(params.dig(:search, :query))
  end

  def show
  end

  def new
    @wish = Wish.new
  end

  def create
    @sport = Sport.find_by(name: params[:wish][:sport])
    @wish = Wish.find_by(user: current_user, sport: @sport, date: Date.today)
    if @wish
      authorize @wish
    else
      @wish = Wish.new
      @wish.date = Date.today
      @wish.user = current_user
      @wish.sport = @sport
      @wish.location = Location.last.address
      authorize @wish
      @wish.save
    end
    redirect_to wishes_path
  end

  # private

  # def wish_params
  #    params.require(:wish).permit(:sport_id)
  # end
end
