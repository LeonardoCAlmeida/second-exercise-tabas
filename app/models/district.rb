class District < ApplicationRecord
  belongs_to :state
  has_many :properties

end
