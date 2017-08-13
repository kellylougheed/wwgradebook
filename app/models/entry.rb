class Entry < ApplicationRecord
  belongs_to :student
  validates :assignment, presence: true, length: { minimum: 1 }

  GRADES = {
    'Mastery': 'M',
    'Approaching Mastery': 'AM',
    'Developing Competence': 'DC',
    'Not Demonstrating Competence': 'NDC'
  }

  def assignment_name
    id = self.assignment
    a = Assignment.find(id)
    a.name
  end

  def assignment_obj
    id = self.assignment
    Assignment.find(id)
  end

end
