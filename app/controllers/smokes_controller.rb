class SmokesController < ApplicationController
  def new
  end

  def create
    @user = current_user
    smoke = @user.smokes.last ? @user.smokes.last : @user.smokes.create
    smoke.update_smoke

    @user.streak ||= Streak.new
    @user.streak.update_streak

    redirect_to root_path
  end
end
