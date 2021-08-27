class WishesController < ApplicationController
  def index
    @wishes = policy_scope(Wish).order(created_at: :desc)
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
    @wish = Wish.new
    @wish.user = current_user
    @sport = Sport.find_by(name: params[:wish][:sport])
    @wish.sport = @sport
    @wish.date = Date.today
    @wish.location = Location.last.address
    authorize @wish
    if @wish.save
      redirect_to wishes_path
    else
      render 'pages/home'
    end
  end

  # private

  # def wish_params
  #    params.require(:wish).permit(:sport_id)
  # end
end
