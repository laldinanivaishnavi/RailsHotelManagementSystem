class RoomtypesController < ApplicationController
  def index
    @roomtypes=Roomtype.all
  end
  def show
    @roomtype=Roomtype.find(params[:id])
  end
end
