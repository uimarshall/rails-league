class RenameNameColumnToFirstName < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :name, :first_name
    
  end
end
# rename_column :table_name, :old_column_name, :new_column_name
#rename_column is a Migration mtd since we're inheriting from Migration class
