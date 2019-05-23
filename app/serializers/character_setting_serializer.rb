class CharacterSettingSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :setting_id, :chapter, :description

end
