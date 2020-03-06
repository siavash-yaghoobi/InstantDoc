class ChangeNotificationtDefaultStatus < ActiveRecord::Migration[5.2]
  def change
    change_column_default :notifications, :status, "pending"
  end
end
