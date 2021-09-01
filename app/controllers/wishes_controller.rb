class WishesController < ApplicationController
  def index
    @wishes = policy_scope(Wish).where.not(id: current_user.likes.pluck(:wish_id))
    # if params[:sport]
    #   @wishes = @wishes.select { |wish| wish.sport_id == params[:sport].to_i }
    # end
    @user_wish = current_user.wishes.where(date: Date.today).last
  end

  def show
  end

  def new
    @wish = Wish.new
  end

  def create
    @sport = Sport.find_by(name: params[:wish][:sport])
    @wish = Wish.find_by(user: current_user, sport: @sport, date: Date.today)
    if !@wish
      @wish = Wish.new
      @wish.date = Date.today
      @wish.user = current_user
      @wish.sport = @sport
      @wish.location = Location.last.address
      @wish.save
    end
    authorize @wish
    redirect_to wishes_path(sport: @sport)
  end

  # private

  # def wish_params
  #    params.require(:wish).permit(:sport_id)
  # end
end
