class Entry < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :settings
  has_many :character_character_settings, through: :characters, source: :character_settings
  has_many :setting_character_settings, through: :settings, source: :character_settings

  def character_settings
    # (character_character_settings + setting_character_settings).uniq
    CharacterSetting.find_by_sql("#{character_character_settings.to_sql} UNION #{setting_character_settings.to_sql}")
  end

end
