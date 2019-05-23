class CharacterSetting < ApplicationRecord
  belongs_to :character
  belongs_to :setting

  def entry
    self.character.entry
  end
end
