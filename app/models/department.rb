class Department < ApplicationRecord
  has_many :offerings
  belongs_to :moderator
  validates :name, :description, presence: true
end
