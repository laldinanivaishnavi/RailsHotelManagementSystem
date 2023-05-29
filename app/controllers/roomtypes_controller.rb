class RoomtypesController < ApplicationController
  def index
    @roomtypes=Roomtype.all
    @selected_hotel=Hotel.find(params[:hotel])
  end
  def show
    @roomtype=Roomtype.find(params[:id])
  end
end
