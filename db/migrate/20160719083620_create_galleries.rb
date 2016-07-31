class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.references :user, index: true
      t.references :post_category, index: true

      t.timestamps
    end
  end
end
