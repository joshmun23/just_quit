class SmokesController < ApplicationController
  respond_to :json, :html

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
    # @smokes = current_user.smokes
    @smokes = current_user.smokes.group_by_day(:created_at).count.map do |smoke|
      result = {}

      result[:date] = smoke[0].to_date
      result[:count] = smoke[1]

      result
    end

    respond_to do |format|
    #   binding.pry
    #   format.json { render json: @smokes }
    end
  end

  def update
    @user = current_user
    @smoke = @user.smokes.find()
  end
end
