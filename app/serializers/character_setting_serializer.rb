class CharacterSettingSerializer < ActiveModel::Serializer
  attributes :id, :character, :setting, :chapter, :description

  belongs_to :entry, serializer: CustomEntrySerializer

  belongs_to :character
  belongs_to :setting



end
