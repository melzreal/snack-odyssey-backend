class CreateSnacks < ActiveRecord::Migration[5.2]
  def change
    create_table :snacks do |t|
      t.string :snack
      t.string :place_id

      t.timestamps
    end
  end
end
