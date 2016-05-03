class Department < ApplicationRecord
  validates :name, :description, presence: true
end
