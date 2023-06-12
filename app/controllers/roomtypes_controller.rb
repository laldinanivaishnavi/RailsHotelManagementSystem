class RoomtypesController < ApplicationController
  include SessionsHelper
  def index
    @roomtypes=Roomtype.all
    if !admin? 
    @selected_hotel=Hotel.find(params[:hotel])
    end
  end

  def show
    @roomtype=Roomtype.find(params[:id])
  end

  def new
    @roomtype = Roomtype.new
  end

  def create
    @roomtype = Roomtype.new(roomtype_params)
    @roomtype.image.attach(params[:roomtype][:image]) if params[:roomtype][:image].present?
    if @roomtype.save
      flash.now[:success] = "Roomtype added to the list"
      redirect_to roomtypes_path(@roomtype.id)
    else
      render 'new'
    end
  end
  
  def edit 
    @roomtype = Roomtype.find(params[:id])
  end

  def update 
    @roomtype = Roomtype.find(params[:id])
    if @roomtype.update(roomtype_params)
      flash.now[:success] = "Roomtype is successfully updated!"
      redirect_to roomtypes_path(@roomtype.id)
    else
      render 'edit'
    end
  end

  def destroy
    @roomtype = Roomtype.find(params[:id])
    @roomtype.destroy
    flash.now[:success]= "Roomtype deleted successfully!"
    redirect_to listroomtypes_path
  end

  private
  def roomtype_params
    params.require(:roomtype).permit(:image, :description, :facilities,:hotel_id)
  end
end
