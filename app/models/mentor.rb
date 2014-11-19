class Mentor < ActiveRecord::Base
  validates :name, :email, presence: :true

  has_many :skills, through: :mentors_skills
end