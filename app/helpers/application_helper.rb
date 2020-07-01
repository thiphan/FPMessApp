module ApplicationHelper
    def current_user
        
        @current_user ||  FbUser.find(session[:fb_user_id]) if session[:fb_user_id]
    end

    def logged_in?
        !current_user.nil?
    end




end
