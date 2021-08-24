class WishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(sport: user.wishes.last.sport).where.not(user: user)
    end
  end

  def create?
    true
  end

end
