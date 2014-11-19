class Mod < ActiveRecord::Base
  validates :name, presence: true, length: { is: 4}
  validate  :first_two_digit_format, :last_two_digit_format, on: :create, on: :update

  def first_two_digit_format
    seperated        = name.to_s.chars
    first_two_digits = seperated[0,2].join.to_i

    if first_two_digits < 14 && first_two_digits > 45
      errors.add(:name, "First two digits should be the year of your module.")
    end
  end

  def last_two_digit_format
    seperated       = name.to_s.chars
    last_two_digits = seperated[2,2].join.to_i

    if last_two_digits >= 13
      errors.add(:name, "Last two digits should be the month your module.")
    end
  end


end
