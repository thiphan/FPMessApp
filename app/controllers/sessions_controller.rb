class SessionsController < ApplicationController
    include SessionsHelper
    def new
    end

    def create
        fb_user =FbUser.find_by(email: params[:session][:email].downcase)
        if fb_user && fb_user.authenticate(params[:session][:password])
            session[:fb_user_id] = fb_user.id
            flash[:notice] = 'Logged in successfully'
            redirect_to fb_user
        else
            flash.now[:alert] = "There was something wrong with your login details"
            render 'new'
        end
    end
    

    def destroy
        log_out
        flash[:notice] = "Logged out successfully."
        redirect_to root_path
    end 
end