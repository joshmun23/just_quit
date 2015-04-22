class NetWorthsController < ApplicationController
  def new
    @net_worth = NetWorth.new
    @user = current_user
  end

  def create
    @user = current_user
    @net_worth = NetWorth.create!(income: params[:net_worth][:income],
                                  user_id: @user.id)

    render :show
  end

  def show

  end
end
