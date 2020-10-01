class AddColumnLastNameToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :last_name, :string
  end
end
# The table we want to add a col to is 'players'
# The col name is 'last_name'
# The data-type is 'string'
