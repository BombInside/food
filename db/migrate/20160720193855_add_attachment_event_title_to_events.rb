class AddAttachmentEventTitleToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :event_title
    end
  end

  def self.down
    remove_attachment :events, :event_title
  end
end
