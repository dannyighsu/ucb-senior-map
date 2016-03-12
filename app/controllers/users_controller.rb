class UsersController < Devise::RegistrationsController

  def new
    @user = User.new
    logger.info("yay")
  end

end
