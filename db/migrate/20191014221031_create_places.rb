class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :country_id

      t.timestamps
    end
  end
end
