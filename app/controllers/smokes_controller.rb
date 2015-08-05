class SmokesController < ApplicationController
  def new
    @user = current_user
    @smoke = @user.smokes.new
  end

  def create
    binding.pry
    @user = current_user
    @user.smokes.create


    @user.streak ||= Streak.new
    @user.streak.update_streak

    redirect_to root_path
  end

  def update
    binding.pry
    @user = current_user
    @smoke = @user.smokes.find()
  end
end
