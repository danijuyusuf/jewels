class Department < ApplicationRecord
  has_many :offerings
  validates :name, :description, presence: true
end
