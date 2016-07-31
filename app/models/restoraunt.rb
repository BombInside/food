class Restoraunt < ActiveRecord::Base
  belongs_to :user
  belongs_to :reservation
  has_many :special_promotions
  has_many :events
  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
