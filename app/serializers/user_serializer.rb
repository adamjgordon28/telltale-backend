class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :bio, :location, :age, :entries

  def entries
    self.object.entries.map do |entry|
      {entry_id: entry.id,
      title: entry.title,
      genre: entry.genre,
    description: entry.description}
    end
  end
end
