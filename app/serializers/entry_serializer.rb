class EntrySerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :description, :content, :character_settings

  has_many :characters
  has_many :settings


  def character_settings
    self.object.settings.map do |setting|
      setting.character_settings.map do |character_setting|
        {id: character_setting.id,
          character_id: character_setting.character_id,
          setting_id: setting.id,
          chapter: character_setting.chapter,
          description: character_setting.description}
        end
    end
  end


end
