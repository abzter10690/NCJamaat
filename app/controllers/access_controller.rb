class AccessController < ApplicationController

  before_action :confirm_logged_in ,
      :except => [:index , :login , :attempt_login , :logout]
  skip_before_action :verify_authenticity_token
  # other controller callback methods
  # after_action
  # around_action
  # skip_before_action
  # skip_after_action
  # skip_around_action

  def index
    puts "inside Access Controller , index action"
  end

  def login
    puts "inside Access Controller , login action"
  end

  def attempt_login
    puts "INSIDE ATTEMPT LOGIN"
    puts params[:itsid]
    puts params[:password]
    if params[:itsid].present? && params[:password].present?
      found_user = User.where(:its_id => params[:itsid]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:userid] = authorized_user.its_id
      puts session[:userid]
      flash[:notice] = "You are now logged in."
      # render(layout: "admin" , template: "admin/manage_users")
      redirect_to(controller: "admin" ,action: "manage_users")
    else
      flash[:notice] = "Invalid ITS / Password combination"
      # render(layout: "admin", template: "admin/manage_users")
      redirect_to(controller: "admin" ,action: "manage_users")
    end
  end

  def logout
    puts params[:itsid]
    puts params[:password]
    session[:userid] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => 'index')
  end

end
