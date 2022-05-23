class Property < ApplicationRecord
  has_many_attached :photos
  has_one :district
  has_one :state
  validates :name, presence: true

  scope :by_state, -> (state) { where(state_id: state) if state.present? }

  def district_name
    District.find(self.district_id).name
  end

  def state_short_name
    State.find(self.state_id).short_name
  end

end
