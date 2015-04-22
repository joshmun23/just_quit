class UserCigarette < ActiveRecord::Base
  belongs_to :user
  belongs_to :cigarette
end
