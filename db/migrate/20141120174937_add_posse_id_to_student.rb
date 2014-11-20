class AddPosseIdToStudent < ActiveRecord::Migration
  def change
    add_column :students, :posse_id, :integer
  end
end
