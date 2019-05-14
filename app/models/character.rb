class Character < ApplicationRecord
  belongs_to :entry
  has_many :character_settings
end
