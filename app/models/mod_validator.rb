class ModValidator < ActiveModel::Validator
  def validate(input)
    false if input.name.to_s.length != 4
  end


end
