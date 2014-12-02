class AddPhotoColumnsToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :photo_file_name,    :string
    add_column :mentors, :photo_content_type, :string
    add_column :mentors, :photo_file_size,    :string
  end
end