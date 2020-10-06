class Appearance < ApplicationRecord
  # Holds the 'ids' of the 2 tables to be joined
  belongs_to :player
  belongs_to :game
end
