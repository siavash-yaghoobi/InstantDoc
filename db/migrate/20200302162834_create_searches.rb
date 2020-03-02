class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :location
      t.integer :radius
      t.references :user, foreign_key: true
      t.references :specialty, foreign_key: :true

      t.timestamps
    end
  end
end
