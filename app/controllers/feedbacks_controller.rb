class FeedbacksController < ApplicationController
    include SessionsHelper
    def new
        @feedback=Feedback.new
        @user =current_user
        #@booking= @feedback.booking
    end

    def create 
        @feedback=Feedback.new(feedback_params)
        @booking= Booking.find_by(id: @feedback.booking_id)
        if @feedback.save
            redirect_to thankyou_path 
        elsif !@booking
            flash.now[:danger]="Please enter valid booking id!"
            render 'new'
        else
            flash.now[:success]="Your feedback is valuable!"
            render 'new'
        end
    end

    def feedback_params
        params.require(:feedback).permit(:booking_id,:ratings,:comments)
    end
end
