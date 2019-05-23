class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :character_settings

end
