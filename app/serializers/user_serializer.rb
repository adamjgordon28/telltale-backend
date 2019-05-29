class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :bio, :location, :age, :entries, :img_url

  has_many :entries, serializer: CustomEntrySerializer
  has_many :follows
  has_many :followings, serializer: FollowSerializer


  def followings
    Follow.all.filter do |follow|
      follow.following_id == self.object.id
    end
  end




end
