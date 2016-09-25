class AdminController < ApplicationController

  before_action :confirm_logged_in      
  skip_before_action :verify_authenticity_token

  def manage_users
    puts "Inside admin/manage_users"
    # render("main" , layout: "admin")
    @users = User.all
  end

  def manage_miqaats
    puts "Inside admin/manage_miqaats"
    @events = Event.all
  end

  def manage_attendance
  end

  def create_miqaat
    #if params[:miqaat_date]==nil || params[:miqaat_name]==nil || params[:miqaat_type]==nil

    event =  Event.where({event_date: params[:miqaat_date], event_start_time: (params[:start_time] + params[:start_period])})
    if event!=nil
      puts event
      flash[:notice] = "Miqaat with same date and start-time already exists."
      redirect_to('manage_miqaats')      
    else
      event = Event.new
      event.event_name = params[:miqaat_name]
      event.event_type = params[:miqaat_type].upcase
      puts params[:miqaat_date]
      event.event_date = params[:miqaat_date]
      event.venue = params[:venue]
      event.event_start_time = params[:start_time] + params[:start_period]
      event.event_end_time = params[:end_time] + params[:end_period]
      event.description = params[:description]
      event.instructions = params[:instruction]
      event.save
      redirect_to('manage_miqaats' ,:notice => "Miqaat successfully created.")
  end
  end

  def create_user
    user = User.find_by_its_id(params[:its_id])
    if user
      puts "inside already create user condition"
      flash[:notice] = "User with ITS #{params[:its_id]} is already present."
      redirect_to('manage_users' , :notice => "blah blah blah" )
      return
    end
    user = User.new
    user.its_id = params[:its_id]
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]
    user.user_type = "U"
    if user.save
      UserMailer.new_user(user).deliver
      flash[:notice] = "Account for #{user.first_name} #{user.last_name} has been created."
    else
      flash[:notice] = "Something is not right. Please check the form values."
    end
    redirect_to('manage_users' ,:notice => flash[:notice])
  end

  def remove_user
    user = User.find_by_its_id(params[:its_id])
    if user

    end
  end
end
