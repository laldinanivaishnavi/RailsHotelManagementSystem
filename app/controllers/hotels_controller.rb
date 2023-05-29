class HotelsController < ApplicationController
  include SessionsHelper
  def index
    @user=current_user
    @hotels=Hotel.all
  end
  def show
    @hotel= Hotel.find(params[:id])
  end
end
