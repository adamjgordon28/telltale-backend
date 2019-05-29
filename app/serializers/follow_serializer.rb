class FollowSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :following_id, :followed






  def followed
    User.find(self.object.user_id)
  end

end
