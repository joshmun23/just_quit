class NetWorth < ActiveRecord::Base
  belongs_to :user
  validates :income,
    presence: true,
    numericality: true

end
