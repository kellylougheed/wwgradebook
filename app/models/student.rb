class Student < ApplicationRecord
  belongs_to :course
  validates :first_name, presence: true, length: { minimum: 1 }
  has_many :comments
  has_many :entries

  def m_count
    count('M')
  end

  def m_percentage
    if self.m_count > 0
      p = self.m_count.to_f/self.total_letter_count.to_f
      p.round(2) * 100
    else
      0.0
    end
  end

  def am_count
    count('AM')
  end

  def am_percentage
    if self.am_count > 0
      p = self.am_count.to_f/self.total_letter_count.to_f
      p.round(2) * 100
    else
      0.0
    end
  end

  def dc_count
    count('DC')
  end

  def dc_percentage
    if self.dc_count > 0
      p = self.dc_count.to_f/self.total_letter_count.to_f
      p.round(2) * 100
    else
      0.0
    end
  end

  def ndc_count
    count('NDC')
  end

  def ndc_percentage
    if self.ndc_count > 0
      p = self.ndc_count.to_f/self.total_letter_count.to_f
      p.round(2) * 100
    else
      0.0
    end
  end

  def count(grade)
    count = 0
    self.entries.each do |entry|
      count += 1 if entry.standard1_grade == grade
      count += 1 if entry.standard2_grade == grade
      count += 1 if entry.standard3_grade == grade
      count += 1 if entry.standard4_grade == grade
      count += 1 if entry.standard5_grade == grade
      count += 1 if entry.standard6_grade == grade
      count += 1 if entry.standard7_grade == grade
      count += 1 if entry.standard8_grade == grade
      count += 1 if entry.standard9_grade == grade
      count += 1 if entry.standard10_grade == grade
      count += 1 if entry.standard11_grade == grade
      count += 1 if entry.standard12_grade == grade
    end
    count
  end

  def total_letter_count
    count = 0
    self.entries.each do |entry|
      count += 1 if entry.standard1_grade?
      count += 1 if entry.standard2_grade?
      count += 1 if entry.standard3_grade?
      count += 1 if entry.standard4_grade?
      count += 1 if entry.standard5_grade?
      count += 1 if entry.standard6_grade?
      count += 1 if entry.standard7_grade?
      count += 1 if entry.standard8_grade?
      count += 1 if entry.standard9_grade?
      count += 1 if entry.standard10_grade?
      count += 1 if entry.standard11_grade?
      count += 1 if entry.standard12_grade?
    end
    count
  end

  def standard1_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard1_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard2_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard2_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard3_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard3_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard4_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard4_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard5_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard5_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard6_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard6_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard7_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard7_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard8_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard8_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard9_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard9_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard10_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard10_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard11_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard11_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def standard12_avg
    total_points = 0
    total_occurrences = 0
    self.entries.each do |entry|
      case entry.standard12_grade
      when "M"
        total_points += 3
        total_occurrences += 1
      when "AM"
        total_points += 2
        total_occurrences += 1
      when "DC"
        total_points += 1
        total_occurrences += 1
      end
    end
    average = total_points.to_f/total_occurrences.to_f
    average = average.round(2)
    if total_occurrences == 0
      "No data"
    else
      convert_to_grade(average)
    end
  end

  def convert_to_grade(average)
    if average >= 2.5
      "M"
    elsif average >= 1.5
      "AM"
    elsif average >= 0.5
      "DC"
    else
      "NDC"
    end
  end

end
