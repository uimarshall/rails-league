# The ORM(ActiveRec) maps the Player class to the players_table(migrations),
# and turns the fields to instances of this model
class Player < ApplicationRecord
    belongs_to :team
    has_one :address #This creates an instance mtd called 'address' that will be used for query
    # validations will run only on create and update,b4 saving to db
    has_many :appearances
    has_many :games, through: :appearances
    validates :first_name, :last_name, presence: true
    validates :age, presence: true, numericality:{greater_than: 0, less_than_or_equal_to: 100}
    
end
 