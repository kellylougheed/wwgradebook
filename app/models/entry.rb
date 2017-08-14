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
    if Assignment.where(id: id).empty?
      "ERROR: Deleted assignment. Delete this grade entry."
    else
      Assignment.where(id: id).first.name
    end
  end

  def assignment_obj
    id = self.assignment
    Assignment.find(id)
  end

end
