class SmokesController < ApplicationController
  def new
    @user = current_user
    @smoke = @user.smokes.new
  end

  def create
    @user = current_user
    @user.smokes.create(decision: true)

    @user.streak ||= Streak.new
    @user.streak.update_streak

    redirect_to root_path
  end

  def index
    @user = current_user
    @smokes = current_user.smokes.group_by_day(:created_at).count
    binding.pry

    render json: @smokes.to_json
  end

  def update
    @user = current_user
    @smoke = @user.smokes.find()
  end
end
