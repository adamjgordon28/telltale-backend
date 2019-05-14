class Setting < ApplicationRecord
  belongs_to  :entry
  has_many :character_settings
end
