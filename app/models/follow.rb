class Follow < ApplicationRecord
  belongs_to :user

  validates :user, presence: true, uniqueness: { scope: :following_id }
end
