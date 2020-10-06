class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :home
      t.string :away

      t.timestamps
    end
  end
end
