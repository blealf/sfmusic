class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

 	def authorize
	  unless User.find_by(id: session[:user_id])
	    redirect_to login_url, notice: "Please log in"
	  end
	end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to root_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
    
  def admin_user
    
    redirect_to(root_url) unless current_user.admin?
    # redirect_to(root_url) unless User.find_by(id: session[:user_id]).admin?
  end
end
