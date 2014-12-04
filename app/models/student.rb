class Student < ActiveRecord::Base
  validates  :name,
             :email,
             :cohort, 
             :mod_id, 
             :posse_id, presence: true, on: :update

  belongs_to :mod
  belongs_to :posse

  has_attached_file :avatar, :styles => { medium: "300x300>", thumb: "150x150"},
  :default_url => "turing.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def is_user?(current_user, student)
    current_user.profile_id == student.id
  end
end
