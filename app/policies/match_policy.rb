class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:wishes).where(wishes: { user: user })
    end
  end

  def index?
    record.user == user
  end

  def show?
    return true
  end
end
