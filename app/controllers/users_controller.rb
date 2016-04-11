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

    @user = User.new
    @user.first_name = user[:first_name]
    @user.last_name = user[:last_name]
    @user.email = user[:email]
    @user.password = user[:password]
    @user.location = user[:location]
    logger.info(user)
    if @user.save
      session[:user_id] = @user.id
      #UserMailer.registration_confirmation(@user).deliver
      #flash[:success] = "An email has been sent to the berkeley.edu address you provided. Please click the link to confirm your email."
      redirect_to '/map'
    else
      flash[:error] = "There was an error in your registration attempt. Please try again."
      redirect_to new_user_registration_path
    end
  end

end
