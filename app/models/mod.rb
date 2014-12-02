class Mod < ActiveRecord::Base
  has_many :students
  has_many :projects

  validates :number,      presence: true
  validates :name,        presence: true
  validates :description, presence: true
end
