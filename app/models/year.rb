class Year < ActiveRecord::Base
  has_many :cigarettes

  validates :year, presence: true
end
