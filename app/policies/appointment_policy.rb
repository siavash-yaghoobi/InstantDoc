class AppointmentPolicy < ApplicationPolicy
  def my_appointments_destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
