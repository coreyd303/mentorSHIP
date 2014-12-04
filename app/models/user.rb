class User < ActiveRecord::Base

  belongs_to :student
  belongs_to :mentor

  def student
    Student.find(profile_id) if profile_type == 'students'
  end

  def mentor
    Mentor.find(profile_id) if profile_type == 'mentors'
  end

  def self.from_omniauth(auth)
    user = User.find_or_create_by(uid: auth.uid)
    user
  end
end

