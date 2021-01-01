class User < ApplicationRecord
  has_secure_password
  acts_as_paranoid

  has_many :notes
end
