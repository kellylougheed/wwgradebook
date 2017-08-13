class Course < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 1 }
  has_many :students
end
