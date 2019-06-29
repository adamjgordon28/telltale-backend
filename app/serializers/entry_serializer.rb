class EntrySerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :description, :content, :user, :published

  has_many :characters
  has_many :character_settings
  has_many :settings



end
