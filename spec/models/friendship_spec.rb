require 'rails_helper'
require 'shoulda/matchers'
describe Friendship do
  before(:each) do
    @friendship = Friendship.new(friend_id: 3 , user_id:1)
  end

  context "validations" do
      it { should validate_presence_of :friend_id}
      it { should validate_presence_of :user_id }
  end

  it "Friendship status should be automatically initialize to be false" do
    expect(@friendship.status).to be false
  end

end