class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.string :country_id
      t.string :user_id

      t.timestamps
    end
  end
end
