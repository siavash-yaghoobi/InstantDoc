class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :waiting_time
      t.string :picture_url
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
