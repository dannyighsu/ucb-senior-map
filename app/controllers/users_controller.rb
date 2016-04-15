class UsersController < Devise::RegistrationsController

  def new
    @user = User.new
  end

  def create
    super do
      user = params[:user]
      logger.info(user[:email])
      if user[:first_name] == "" or user[:last_name] == ""
        flash[:notice] = "Please enter your name."
        redirect_to new_user_registration_path
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
      elsif User.find_by(email: "dannyighsu@berkeley.edu")
        flash[:notice] = "This email has already been registered"
        redirect_to new_user_registration_path
        return
      elsif user[:description].length > 100
        flash[:notice] = "Your description is too long."
        redirect_to new_user_registration_path
        return
      end

      resource.first_name = user[:first_name]
      resource.last_name = user[:last_name]
      resource.location = user[:location]
      resource.school = user[:school]
      resource.description = user[:description]
      result = resource.save
=begin
      if result
        UserMailer.registration_confirmation(@user).deliver
        flash[:success] = "An email has been sent to the berkeley.edu address you provided. Please click the link to confirm your email."
        redirect_to map_path
      else
        flash[:error] = "There was an error in your registration attempt. Please try again."
        redirect_to new_user_registration_path
      end
=end
    end
  end

end
