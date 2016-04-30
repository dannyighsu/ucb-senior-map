require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#update" do
    it "takes one parameter and returns nil" do
      user = User.new
      user.update(first_name: "Danny")
      expect(user.first_name).to eql "Danny"
    end
  end
end
