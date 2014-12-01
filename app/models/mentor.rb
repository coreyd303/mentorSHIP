

class Mentor < ActiveRecord::Base

  validates :name, :email, presence: :true, on: :update
  has_many :mentor_skills
  has_many :skills, through: :mentor_skills

  has_attached_file :photo, :styles => { medium: "300x300>", thumb: "150x150"},
  :default_url => "turing.png"

  def self.find_matches(query)
    query = query.downcase
    where("lower(name) like ?", "%#{query}%")
  end

  def self.contact_by
    ["Text-Request Appointment","Email-Request Appointment"]
  end

  def self.send_text_message
    twilio_sid   = ENV["twilio_account_sid"]
    twilio_token = ENV["twilio_account_token"]

    @twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token)

    @twilio_client.account.sms.messages.create(
      :from => "+16572206498",
      :to   => "+17144012809",
      :body => "Hey there"
    )
  end

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
