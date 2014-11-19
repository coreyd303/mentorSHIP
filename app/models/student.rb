class Student < ActiveRecord::Base
  validates :name,      presence: true
  validates :cohort,    presence: true
  validates :module_id, presence: true
end
