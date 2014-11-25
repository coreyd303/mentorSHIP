class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :snippet_id
      t.string :body
    end
  end
end
