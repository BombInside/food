class CreateSpecialPromotions < ActiveRecord::Migration
  def change
    create_table :special_promotions do |t|
      t.datetime :prom_start_date
      t.datetime :prom_end_date
      t.string :prom_title
      t.string :old_price
      t.string :new_price
      t.references :user, index: true
      t.references :restoraunt, index: true

      t.timestamps
    end
  end
end
