class RoomsController < ApplicationController
  include SessionsHelper
  def index
    @user=current_user
    #@selected_hotel=Hotel.find(params[:hotel])
    @selected_roomtype=Roomtype.find(params[:roomtype])
    @available_rooms = Room.where(occupancy: "Available", roomtype_id: @selected_roomtype.id)
    if @available_rooms.present?
      @allocated_room = @available_rooms.sample
      @allocated_room.occupancy = "Occupied"
      @allocated_room.save
      puts "Room allocated to user: #{@allocated_room.id}"
    else
      puts "No available rooms of the selected type."
    end
end
end
