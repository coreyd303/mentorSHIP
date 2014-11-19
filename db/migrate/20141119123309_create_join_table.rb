class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :mentors, :skills do |t|
      t.index [:mentor_id, :skill_id]
      t.index [:skill_id, :mentor_id]
    end
  end
end
