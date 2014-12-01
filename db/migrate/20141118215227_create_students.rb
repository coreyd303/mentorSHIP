class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string   :email
      t.string   :name
      t.text     :bio
      t.string   :cohort
      t.integer  :module_id
      t.timestamps
    end
  end
end
