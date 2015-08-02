class Location < ActiveRecord::Base
  has_many :cigarettes
  has_many :users
end
