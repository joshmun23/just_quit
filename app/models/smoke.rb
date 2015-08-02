class Smoke < ActiveRecord::Base
  belongs_to :user

  def update_smoke
    #check if the last smoke record is less than a day
    if created_at < created_at.days_ago(-1)
      update_attributes({
        total_count: total_count + 1,
        total_cost: total_cost + user.location.cigarettes.first.cost/20
      })
    end
    save
  end
end
