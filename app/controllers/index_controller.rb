class IndexController < ApplicationController

  def home
    if sessions[:user] != nil
      redirect_to map_path
    end
  end

  def about
  end

  def contact
  end

  def help
  end

end
