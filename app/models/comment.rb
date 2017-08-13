class Comment < ApplicationRecord
  belongs_to :student
  validates :message, presence: true, length: { minimum: 1 }
end
