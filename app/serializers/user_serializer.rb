class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :bio, :location, :age, :entries, :img_url

  has_many :entries, serializer: CustomEntrySerializer



  
end
