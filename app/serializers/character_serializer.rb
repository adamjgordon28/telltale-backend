class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :entry

  has_many :character_settings

  belongs_to :entry, serializer: CustomEntrySerializer



end
