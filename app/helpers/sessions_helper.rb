module SessionsHelper

    # Logs in the given user.
    def log_in(fb_user)
      session[:user_id] = fb_user.id
    end
    
    # Logs out the current user.
    def log_out
      session.delete(:fb_user_id)
      @current_user = nil
    end
  end