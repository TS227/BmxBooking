class Event < ApplicationRecord
  has_many :slots, dependent: :destroy
end
