require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  before :all do
    @users = []
    @users.append(User.new())
  end

  describe "#new" do
    it "should create a user" do
      user = User.new
    end
  end

end
