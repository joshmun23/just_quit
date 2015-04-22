class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
    @user = current_user
  end

  def create
    @purchase = Purchase.new
    @user = current_user
    location = Location.find(@user.location_id)

    cig = Cigarette.where(location: location, year_id: 2).first
    cost = cig.cost
    @user.purchases.create!(cost: cost)

    render :show
  end

  def show

  end
end
