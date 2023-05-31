class BookingsController < ApplicationController
  include SessionsHelper
  #include Cocoon::ControllersHelpers
    def new
        @booking = Booking.new
        @booking.hotel_id=params[:hotel_id]
        @booking.room_id=params[:room_id]
        @booking.user_id=current_user.id
    end

    def create
    @booking = Booking.new(booking_params)
    @booking.hotel_id=params[:hotel_id]
    @booking.room_id=params[:room_id]
    if @booking.save
      flash[:success] = "Booking is done!"
      booking_id=@booking.id
      redirect_to @booking
    else
      render 'new'
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:estarrival, :estdeparture, :checkin,:checkout,:numofadults,:numofchild,:specialconcern,guests_attributes: [:name,:age,:gender,:phonenumber,:aadharnumber])
    end
end
