class CreateRestoraunts < ActiveRecord::Migration
  def change
    create_table :restoraunts do |t|
      t.references :user, index: true
      t.references :reservation, index: true
      t.string :title
      t.string :phone
      t.time :w_time_start
      t.time :w_time_end
      t.time :wr_time_start
      t.time :wr_time_end

      t.timestamps
    end
  end
end
