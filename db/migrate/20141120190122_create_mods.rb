class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.integer :number
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
