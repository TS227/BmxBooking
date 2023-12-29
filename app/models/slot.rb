class Slot < ApplicationRecord
  belongs_to :event
  has_many :slots_users
  has_many :users, through: :slots_users
end
