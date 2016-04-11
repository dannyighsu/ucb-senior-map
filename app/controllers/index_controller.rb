class IndexController < ApplicationController

  def home
    logger.info(session[:user_id])
    if current_user
      redirect_to '/map'
    end
  end

  def about
  end

  def contact
  end

  def help
  end

end
