class WishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.wishes.present?
        return scope
      end
      []
    end
  end

  def create?
    true
  end
end
