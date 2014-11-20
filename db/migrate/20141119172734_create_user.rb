class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :profile_type
      t.integer :profile_id
    end
  end
end
