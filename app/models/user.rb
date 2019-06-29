class User < ApplicationRecord
  validates :username, uniqueness: true
  has_many :follows, :dependent => :destroy
  has_many :entries, :dependent => :destroy
  has_secure_password

end
