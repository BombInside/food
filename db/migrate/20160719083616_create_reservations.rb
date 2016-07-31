class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :res_date
      t.time :res_time
      t.string :restoraunt
      t.integer :pers_count
      t.string :cont_email
      t.string :cont_name
      t.string :cont_phone
      t.text :cont_message
      t.references :user, index: true

      t.timestamps
    end
  end
end
