module HotelsHelper
    def current_hotel
        @current_hotel ||= Hotel.find_by(id: params[:hotel_id])
    end
end
