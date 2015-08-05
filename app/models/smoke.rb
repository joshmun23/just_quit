class Smoke < ActiveRecord::Base
  belongs_to :user
  validates :decision, presence: true
end
