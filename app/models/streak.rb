class Streak < ActiveRecord::Base
  belongs_to :user

  def update_streak
    streak_params = {}

    #increment slump
    streak_params[:current_slump] = current_slump + 1

    #record longest_streak
    if current_streak > longest_streak
      streak_params[:longest_streak] = current_streak
    end

    #reset current_streak
    streak_params[:current_streak] = 0

    #record longest_slump
    if current_slump + 1 > longest_slump
      streak_params[:longest_slump] = current_slump + 1
    end

    update_attributes(streak_params)
    save
  end
end
