class CustomEntrySerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :description, :characters, :settings

end
