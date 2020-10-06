class AddColumnLastNameToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :last_name, :string
  end
end
# add_column :table_name, :column_name, :column_type, :column_options
# 'add_column' is a Migration mtd since we're inheriting frm the Migration class
# The table we want to add a col to is 'players'
# The col name is 'last_name'
# The data-type is 'string'
