class Snippet < ActiveRecord::Base
  validates :title, :body, presence: true
end