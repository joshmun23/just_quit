class SmokesController < ApplicationController
  def new
  end

  def create
    @user = current_user
    @user.smokes.create(decision: true)

    @user.streak ||= Streak.new
    @user.streak.update_streak

    redirect_to root_path
  end
end
