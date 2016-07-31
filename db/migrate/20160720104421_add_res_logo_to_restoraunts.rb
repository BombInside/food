class AddResLogoToRestoraunts < ActiveRecord::Migration
  def change
    add_column :restoraunts, :res_logo_id, :string
  end
end
