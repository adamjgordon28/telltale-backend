class User < ApplicationRecord
  has_many :follows, :dependent => :destroy
  has_many :entries, :dependent => :destroy
  has_secure_password

end
