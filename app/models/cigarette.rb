class Cigarette < ActiveRecord::Base
  belongs_to :location
  belongs_to :year

  validates :cost,
    presence: true,
    numericality: true

  validates :location_id,
    presence: true
end
