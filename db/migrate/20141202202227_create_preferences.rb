class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string  :name
      t.integer :mentor_id
      t.index   :mentor_id
      t.timestamps
    end
  end
end
