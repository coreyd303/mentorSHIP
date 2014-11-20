class Student < ActiveRecord::Base
  validates :cohort,    presence: true
  validates :name,      presence: true
  validates :module_id, presence: true
  validate  :first_two_digit_format, :last_two_digit_format


  def first_two_digit_format
    if cohort.nil?
      errors.add(:cohort, "Cohort can not be empty.")
      return
    end
    seperated        = cohort.chars
    first_two_digits = seperated[0,2].join.to_i

    if first_two_digits < 14 && first_two_digits > 45
      errors.add(:cohort, "First two digits should be the year of your module.")
    end
  end

  def last_two_digit_format
    if cohort.nil?
      errors.add(:cohort, "Cohort can not be empty.")
      return
    end
    seperated       = cohort.chars
    last_two_digits = seperated[2,2].join.to_i

    if last_two_digits >= 13
      errors.add(:cohort, "Last two digits should be the month your module.")
    end
  end

end
