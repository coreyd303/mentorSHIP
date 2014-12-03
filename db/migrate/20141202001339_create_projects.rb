class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :name
      t.string  :url
      t.text    :description
      t.integer :mod_id
      t.index   :mod_id
      t.timestamps
    end
  end
end
