class CustomEntrySerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :description, :characters, :settings, :character_settings, :user_id, :published


  has_many :characters
  has_many :character_settings
  has_many :settings
end
