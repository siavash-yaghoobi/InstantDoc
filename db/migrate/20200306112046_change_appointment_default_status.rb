class ChangeAppointmentDefaultStatus < ActiveRecord::Migration[5.2]
  def change
    change_column_default :appointments, :status, "pending"
  end
end
