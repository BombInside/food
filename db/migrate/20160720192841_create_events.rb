class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.boolean :posted
      t.text :desctiption
      t.references :restoraunt, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
