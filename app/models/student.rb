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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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
      "N/A"
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

  def final_ww_grade
    gpr = self.final_GPR
    if gpr <= 4.0 && gpr >= 3.34
      "M"
    elsif gpr <= 3.33 && gpr >= 3.24
      "AM"
    elsif gpr <= 2.33 && gpr >= 1.34
      "DC"
    else
      "NDC"
    end
  end

  def final_grade
    gpr = self.final_GPR
    if gpr <= 4.0 && gpr >= 3.67
      "A"
    elsif gpr <= 3.66 && gpr >= 3.34
      "A-"
    elsif gpr <= 3.33 && gpr >= 3.01
      "B+"
    elsif gpr <= 3.0 && gpr >= 2.67
      "B"
    elsif gpr <= 2.66 && gpr >= 2.34
      "B-"
    elsif gpr <= 2.33 && gpr >= 2.01
      "C+"
    elsif gpr <= 2.0 && gpr >= 1.67
      "C"
    elsif gpr <= 1.66 && gpr >= 1.34
      "C-"
    elsif gpr <= 1.33 && gpr >= 1.0
      "D"
    else
      "NC"
    end
  end

  def final_GPR
    totals = self.calculate_totals
    gpr = 4.0 - (totals[1].to_f * 0.138) - (totals[2].to_f * 0.222) - (totals[3].to_f * 0.333)
    gpr.round(2)
  end

  def calculate_totals
    m_total = 0
    am_total = 0
    dc_total = 0
    ndc_total = 0
    case self.standard1_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard2_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard3_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard4_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard5_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard6_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard7_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard8_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard9_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard10_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard11_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    case self.standard12_avg
    when "M"
      m_total += 1
    when "AM"
      am_total += 1
    when "DC"
      dc_total +=1
    when "NDC"
      ndc_total += 1
    end
    [m_total, am_total, dc_total, ndc_total]
  end
  
end
