class EntrySerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :description, :content, :character_settings

  has_many :characters
  has_many :settings



end
