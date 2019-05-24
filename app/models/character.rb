class Character < ApplicationRecord
  belongs_to :entry
  has_many :character_settings, :dependent => :destroy
end
