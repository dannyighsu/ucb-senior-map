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

  describe "#update" do
    it "takes one parameter and returns nil" do
      @users[0].update(first_name: "Danny")
      expect(@users[0].first_name).to eql "Danny"
    end
  end

  describe "#destroy" do
    it "should delete the user" do
      @users[0].destroy
    end
  end

end
