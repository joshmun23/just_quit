class HomesController < ApplicationController
  def index
    @user = current_user
    render :index, layout: true
  end
end
