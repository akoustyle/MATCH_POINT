class WishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.wishes.present?
        return scope.where(sport: user.wishes.last.sport, date: Date.today).where.not(user: user).order(created_at: :desc)
      end
      []
    end
  end

  def create?
    true
  end
end
