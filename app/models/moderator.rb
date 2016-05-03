class Moderator < ApplicationRecord
  has_many :departments
  has_secure_password
end
