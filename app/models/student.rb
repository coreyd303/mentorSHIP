class Student < ActiveRecord::Base
  belongs_to :mod
  belongs_to :posse

  validates :name,     presence: true
  validates :cohort,   presence: true
  validates :mod_id,   presence: true
  validates :posse_id, presence: true

  has_attached_file :avatar, :styles => { medium: "300x300>", thumb: "150x150"},
  :default_url => "turing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
