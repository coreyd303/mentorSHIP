class CreateMentorSkills < ActiveRecord::Migration
  def change
    create_table :mentor_skills, force: true do |t|
      t.integer :mentor_id
      t.integer :skill_id
      t.timestamps
    end

    add_index :mentor_skills, [:mentor_id], name: "index_mentor_skills_on_mentor_id", using: :btree
    add_index :mentor_skills, [:skill_id], name: "index_mentor_skills_on_skill_id", using: :btree
  end
end

