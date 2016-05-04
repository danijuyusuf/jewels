class Moderator < ApplicationRecord
  has_many :departments
  validates :firstname, :lastname, :email,
            :password, :password_confirmation, presence: true
  has_secure_password
end
