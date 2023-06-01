class BookingsController < ApplicationController
  include SessionsHelper
  #include Cocoon::ControllersHelpers
    def new
        @booking = Booking.new
        @booking.guests.build
        @booking.hotel_id=params[:hotel_id]
        @booking.room_id=params[:room_id]
        @booking.user_id=current_user.id
        @hotel=Hotel.find(params[:hotel_id])
        @booking.hotel=@hotel
    end
    
    def show
      @booking = Booking.find(params[:id])
      @guests=@booking.guests
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.hotel_id = params[:hotel_id]
      @booking.room_id = params[:room_id]
      @booking.user_id = params[:user_id]
      if @booking.save
        # Assign the booking_id to each guest
        params[:booking][:guests_attributes].each do |_, guest_attributes|
          #guest_attributes[:booking_id] = @booking.id
          guest_attributes[:hotel_id]=params[:hotel_id]
          guest_attributes[:room_id]=params[:room_id]
          ##guest=@booking.guests.build(guest_attributes)
          ##guest.hotel_id=params[:hotel_id]
          #guest.room_id=params[:room_id]
          #guest.booking_id=@booking.id
          #guest.save
        end
        flash[:success] = "Booking is done!"
        #booking_id = @booking.id
        redirect_to @booking
      else
        render 'new'
      end
    end

  private

    def booking_params
      params.require(:booking).permit(:estarrival, :estdeparture, :checkin,:checkout,:numofadults,:numofchild,:specialconcern,:bookingstatus,guests_attributes: [:name,:age,:gender,:phonenumber,:aadharnumber,:hotel_id,:room_id,:booking_id])
    end
end
