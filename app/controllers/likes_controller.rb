class LikesController < ApplicationController

  def create
    skip_authorization

    @wish = Wish.find(params[:wish_id])
    # binding.pry
    @like = Like.new(user: current_user, wish: @wish, liked: params[:liked])

    if @like.save!
      if mutual?(@wish)
        create_match(@wish)
        create_chatroom(@wish)
      end

      respond_to do |format|
        format.html {redirect_to match_path(@match)}
        format.json do
          if @match
            other_user = @match.wishes.where.not(user: current_user).first.user
            swal_content = render_to_string(
              partial: "matches/swal_content",
              locals: {user: other_user},
              formats: :html
            )
            render json: { match: true, swal_content: swal_content }
          else
            render json: {match: false}
          end
        end
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

  def create_chatroom(wish)
    chatroom = Chatroom.where(
      "(user1_id = :current_user_id AND user2_id = :other_user_id)
        OR
      (user1_id = :other_user_id AND user2_id = :current_user_id)",
      current_user_id: current_user.id,
      other_user_id: wish.user_id
    )

    unless chatroom.exists?
      Chatroom.create!(user1: current_user, user2: wish.user)
    end
  end

  def mutual?(wish)
    # binding.pry
    params[:liked] == "true" && other_like(wish)
  end

  def other_like(wish)
    wish.user.likes.where(liked: true).joins(:wish).where(wishes: { user_id: current_user.id }).first
  end
end
