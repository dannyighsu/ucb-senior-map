class UsersController < Devise::RegistrationsController

  def new
    @user = User.new
  end

  def create
    logger.info(params[:user][:email])
    if /.+@berkeley.edu/.match(params[:user][:email]) == nil
      flash[:notice] = "Please enter a berkeley.edu email address."
      redirect_to new_user_registration_path
      return
    elsif params[:user][:location] == ""
      flash[:notice] = "Please provide either your LinkedIn account or a valid location."
      redirect_to new_user_registration_path
      return
    elsif params[:user][:password].length < 6
      flash[:notice] = "Passwords must be at least 6 characters in length."
      redirect_to new_user_registration_path
      return
    elsif params[:user][:password] != params[:user][:password_confirmation]
      flash[:notice] = "The passwords you entered do not match."
      redirect_to new_user_registration_path
      return
    end

    user = flash[:user]
    logger.info(user)
    redirect_to new_map_path
  end

end
