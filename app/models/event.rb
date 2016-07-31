class Event < ActiveRecord::Base
  belongs_to :restoraunt
  belongs_to :user
  has_attached_file :event_title, styles: { medium: "800x400>", thumb: "100x100>" }, default_url: "http://static-12.sinclairstoryline.com/resources/media/fdd7ff5f-3057-4342-93d6-d7aecdc96fd2-large16x9_KTVOMissing.png"
  validates_attachment_content_type :event_title, content_type: /\Aimage\/.*\Z/
end
