class Mod < ActiveRecord::Base
  has_many :students
  has_many :projects

  validates :number,
            :name,
            :description, presence: true
end
