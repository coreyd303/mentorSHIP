class MentorSkill < ActiveRecord::Base
  belongs_to :mentors
  belongs_to :skills
end