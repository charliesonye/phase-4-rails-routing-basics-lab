class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.highest_student_grade
    self.where('grade = ?', self.maximum(:grade))
  end

end
