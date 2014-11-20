class AddPhotoColumnToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :photo, :string
  end
end
