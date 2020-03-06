class SearchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.user == user
  end
#changed to not repeat record.user
  def create?
    index?
  end

  def destroy?
    index?
  end
end
