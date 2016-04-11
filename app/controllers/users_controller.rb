class UsersController < Devise::RegistrationsController

  def new
    @user = User.new
  end

  def create
    user = params[:user]
    logger.info(user[:email])
    if user[:first_name] == nil or user[:last_name] == nil
      flash[:notice] = "Please enter your name."
      return
    elsif /.+@berkeley.edu/.match(user[:email]) == nil
      flash[:notice] = "Please enter a berkeley.edu email address."
      redirect_to new_user_registration_path
      return
    elsif user[:location] == ""
      flash[:notice] = "Please provide either your LinkedIn account or a valid location."
      redirect_to new_user_registration_path
      return
    elsif user[:password].length < 6
      flash[:notice] = "Passwords must be at least 6 characters in length."
      redirect_to new_user_registration_path
      return
    elsif user[:password] != params[:user][:password_confirmation]
      flash[:notice] = "The passwords you entered do not match."
      redirect_to new_user_registration_path
      return
    end

    registration = User.new
    registration.first_name = user[:first_name]
    registration.last_name = user[:last_name]
    registration.email = user[:email]
    registration.password = user[:password]
    registration.location = user[:location]
    logger.info(user)
    registration.save
    sessions[:current_user] = registration
    redirect_to map_path
  end

end
