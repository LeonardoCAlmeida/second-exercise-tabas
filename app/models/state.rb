class State < ApplicationRecord
  has_many :districts
  has_many :properties, through: :district
end
