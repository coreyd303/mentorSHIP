class Mentor < ActiveRecord::Base
  validates :name, :company, :email, presence: :true

  has_and_belongs_to_many :skills

end