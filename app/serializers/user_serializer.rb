class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :bio, :location, :age, :entries, :img_url

  has_many :entries, serializer: CustomEntrySerializer



  # def entries
  #   self.object.entries.map do |entry|
  #     {entry_id: entry.id,
  #       title: entry.title,
  #       genre: entry.genre,
  #       description: entry.description}
  #     end
  #   end
end
