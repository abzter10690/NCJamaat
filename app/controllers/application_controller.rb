class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  #put this in every controller
  def confirm_logged_in
    unless session[:userid]
      flash[:notice] = "Please log in"
      redirect_to(:controller => 'access',:action => 'index')
      puts "inside confirm_logged_in function"
      return true #halt the before_action
    else
      return true
    end
  end

end
