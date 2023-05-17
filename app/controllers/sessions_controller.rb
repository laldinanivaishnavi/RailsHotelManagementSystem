class SessionsController < ApplicationController
    def create
        @user=User.find_by(name: params[:name])
        #authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            #set session and redirection on success
            session[:user_id]=@user.id 
            redirect_to user_path
        else
            #error message on fail
            message= "Something went wrong! Invalid username or password"
            redirect_to login_path,notice: message
        end
    end
end
