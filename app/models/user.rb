class User < ActiveRecord::Base
  def student
    Student.find(profile_id) if profile_type == 'student'
  end

  def mentor
    Mentor.find(profile_id) if profile_type == 'mentor'
  end

  def self.find_by_omniauth(auth)
    user = User.find_by_uid(auth['uid'])
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth['uid']
    end
  end
end
