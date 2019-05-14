class Entry < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :settings

end
