class User < ApplicationRecord
  has_many :follows
  has_many :entries
  has_secure_password
  
end
