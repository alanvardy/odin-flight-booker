class Flight < ApplicationRecord
  belongs_to :airport, polymorphic: true
end
