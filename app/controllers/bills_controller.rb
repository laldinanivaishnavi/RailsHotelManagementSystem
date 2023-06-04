class BillsController < ApplicationController
    def new
        @bill= Bill.new
        @booking = Booking.find(params[:booking_id])
        @bill.booking=@booking
        @bill.calculate_values(@booking)
    end
    
    def payment
        @bill=Bill.find(params[:id])
        if @bill
          flash[:success] = "Transaction Successful!"
        end
    end

    def show
        @bill= Bill.find(params[:id])
    end

    def create
        @booking = Booking.find(params[:booking_id])
        @bill = Bill.new(bill_params)
        @bill.inspect
        if @bill.save
            flash[:danger] = "Please complete payment!"
            redirect_to bill_path(@bill)
        else
          render :new
        end
    end

    private
    def bill_params
        params.require(:bill).permit(:room_charge,:roomservice_charge,:restaurant_charge,:bar_charge,:misc_charge,:iflatecheckout_charge,:total_charge,:payment_date,:payment_mode,:creditcard_number,:creditcard_expiry,:transaction_id,:transaction_status,:booking_id)
    end
end
