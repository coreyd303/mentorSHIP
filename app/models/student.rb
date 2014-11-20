class Student < ActiveRecord::Base
  validates :name, :cohort, :module_id, presence: true, on: :update

  has_attached_file :avatar, :styles => { medium: "300x300>", thumb: "150x150"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
