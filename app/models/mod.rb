class Mod < ActiveRecord::Base
  validates :name, presence: true, numericality: { only_integer: true }
  \

end
