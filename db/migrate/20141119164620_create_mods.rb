class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.integer :name

      t.timestamps
    end
  end
end
