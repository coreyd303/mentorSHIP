class Skill < ActiveRecord::Base
  has_many :mentors, through: :mentors_skills
end