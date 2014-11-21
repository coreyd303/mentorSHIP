class Mentor < ActiveRecord::Base
  validates :name, :email, presence: :true

  has_many :mentor_skills
  has_many :skills, through: :mentor_skills

  # def skills(skill_list)
  #   if skill_list
  #     valid_skills = skill_list.reject do |skill|
  #      skill.empty?
  #     end

  #     new_or_found_skills = valid_skills.map do |name|
  #       Skill.find_or_create_by(name: name)
  #     end

  #     self.skills = new_or_found_skills
  #   end
  # end
end