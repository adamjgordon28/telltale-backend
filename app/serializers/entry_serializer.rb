class EntrySerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :description, :content

end
