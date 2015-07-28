class User < ActiveRecord::Base
  has_many :purchases
  has_many :net_worths
  has_many :smokes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def purchase
    binding.pry
  end
end
