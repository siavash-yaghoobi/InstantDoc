class AddThelephoneToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :telephone, :integer
  end
end
