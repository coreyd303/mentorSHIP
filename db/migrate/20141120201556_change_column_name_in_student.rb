class ChangeColumnNameInStudent < ActiveRecord::Migration
  def change
    rename_column :students, :module_id, :mod_id 
  end
end
