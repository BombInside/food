class Restoraunt < ActiveRecord::Base
  belongs_to :user
  belongs_to :reservation
  has_many :special_promotions
end
