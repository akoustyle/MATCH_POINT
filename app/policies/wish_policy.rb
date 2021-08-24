class WishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.wishes.present?
      scope.where(sport: user.wishes.last.sport).where.not(user: user)
      end
    end
  end

  def create?
    true
  end

end
