class SettingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :entry_id

  has_many :character_settings

end
