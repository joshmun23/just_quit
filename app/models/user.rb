class User < ActiveRecord::Base
  has_many :purchases
  has_many :net_worths
  has_many :smokes
  has_one :streak
  belongs_to :location

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def smoke_cost(time_period)
    cost_of_smoke = location.cigarettes.last.cost/20
    smoke_count = fetch_smoke_records_count(time_period)

    (smoke_count * cost_of_smoke).round(2)
  end

  def health_cost(time_period)
    health_cost = location.cigarettes.last.health_cost
    smoke_count = fetch_smoke_records_count(time_period)

    (smoke_count * health_cost).to_i
  end

  def fetch_smoke_records_count(time_period)
    case time_period
    when 'daily'
      smokes = self.smokes.where(
        "created_at > ? AND created_at < ?",
        DateTime.now.beginning_of_day, DateTime.now.end_of_day
      )
    when 'weekly'
      smokes = self.smokes.where(
        "created_at > ? AND created_at < ?",
        DateTime.now.beginning_of_week, DateTime.now.end_of_week
      )
    when 'monthly'
      smokes = self.smokes.where(
        "created_at > ? AND created_at < ?",
        DateTime.now.beginning_of_month, DateTime.now.end_of_month
      )
    when 'annually'
      smokes = self.smokes.where(
        "created_at > ? AND created_at < ?",
        DateTime.now.beginning_of_year, DateTime.now.end_of_year
      )
    when 'all-time'
      smokes = self.smokes
    end
    smokes.count
  end
end
