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
    user = find_with_auth(auth)
    create_with_auth(auth) unless user
    user
  end

  def self.find_with_auth(auth)
    User.find_by(
      uid: auth.uid
      )
  end

  def self.create_with_auth(auth)
    User.new do |user|
      user.uid = auth.uid
      user.save!
    end
  end

  # def self.find_by_omniauth(auth)
  #   user = User.find_by_uid(auth['uid'])
  # end

  # def self.create_with_omniauth(auth)
  #   create! do |user|
  #     user.uid = auth['uid']
  #   end
  # end
end

