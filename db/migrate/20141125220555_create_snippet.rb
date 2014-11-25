class CreateSnippet < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.integer :student_id
      t.text :title
      t.text :body
    end
  end
end
