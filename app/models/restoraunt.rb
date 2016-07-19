class Restoraunt < ActiveRecord::Base
  belongs_to :user
  belongs_to :reservation
end
