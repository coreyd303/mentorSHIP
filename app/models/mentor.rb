class Mentor < ActiveRecord::Base
  validates :name,
            :email, 
            :contact_preference, presence: :true, on: :update

  has_many  :mentor_skills
  has_many  :skills, through: :mentor_skills

  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "150x150"},
  :default_url => "turing.png"
end
