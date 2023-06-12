class HotelsController < ApplicationController
  include SessionsHelper
  def index
    @user=current_user
    @hotels=Hotel.all
  end
  def show
    @hotel= Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      flash.now[:success] = "Hotel added to the list"
      redirect_to hotels_path(@hotel.id)
    else
      render 'new'
    end
  end
  
  def edit 
    @hotel = Hotel.find(params[:id])
  end

  def update 
    @hotel = Hotel.find(params[:id])
    if @hotel.update(hotel_params)
      flash.now[:success] = "Hotel is successfully updated!"
      redirect_to hotels_path(@hotel.id)
    else
      render 'edit'
    end
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    flash.now[:success]= "Hotel deleted successfully!"
    redirect_to listhotels_path
  end

  private
  def hotel_params
    params.require(:hotel).permit(:name, :address, :postalcode,:city,:country,:totalrooms,:phonenumber,:starrating ,:owner_id)
  end
end
