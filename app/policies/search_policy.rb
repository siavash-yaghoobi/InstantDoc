class SearchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create
      record.user == user || user.admin?
    end
  end
end
