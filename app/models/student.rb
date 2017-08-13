class Student < ApplicationRecord
  belongs_to :course
  validates :first_name, presence: true, length: { minimum: 1 }
  has_many :comments
end
