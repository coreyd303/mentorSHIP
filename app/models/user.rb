class User < ActiveRecord::Base
  
  def self.find_by_omniauth(auth)
    user = User.find_by_uid(auth['uid'])
    binding.pry
    user ? user : User.create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth['uid']
    end
  end
end
