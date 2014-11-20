class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :email
      t.string :company
      t.text   :bio
      t.string :photo
      t.timestamps
    end
  end
end
