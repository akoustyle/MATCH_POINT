class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:wishes).where(wishes: { user: user })
    end
  end

  def show?
    return true
  end

  def destroy?
    return true
  end
end
