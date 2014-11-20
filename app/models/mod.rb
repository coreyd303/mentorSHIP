class Mod < ActiveRecord::Base
  has_many :students

  validates :number,      presence: true
  validates :name,        presence: true
  validates :description, presence: true
end
