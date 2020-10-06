class Address < ApplicationRecord
  belongs_to :player #queries which player the address belongs to.
  # This creates an instance mtd called 'player' that will be used for query
end
