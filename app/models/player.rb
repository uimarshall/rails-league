# The ORM(ActiveRec) maps the Player class to the players_table(migrations),
# and turns the fields to instances of this model
class Player < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :age, presence: true, numericality:{greater_than: 0, less_than_or_equal_to: 100}
    
end
