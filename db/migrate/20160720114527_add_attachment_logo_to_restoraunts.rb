class AddAttachmentLogoToRestoraunts < ActiveRecord::Migration
  def self.up
    change_table :restoraunts do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :restoraunts, :logo
  end
end
