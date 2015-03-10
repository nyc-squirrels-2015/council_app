require 'rails_helper'

describe FriendshipsController do
  let(:user) {FactoryGirl.create :user}
  let(:friend) {FactoryGirl.create :user}
  let(:friendship) { Friendship.create(user_id: :user, friend_id: friend.id) }

  before do
    stub_current_user user
  end

  describe "#index" do
    it "assigns the friendship to Friendship.all" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "assigns the friendship to Friendship.new " do
      get :new
      expect(assigns(:friendship)).to be_a_new(Friendship)
    end
  end

  describe "#invite" do
    it "assigns the friendship to Friendship.new " do
      get :invite
      expect(friendship.status).to be false
    end
  end

  describe "#create" do
    it "creates the friendship if valid params" do
       post :create, friendship: {
        email: 'jay@example.com',
        user_id: 3
      }

      expect(response).to be_redirect
    end
  end

  describe "#destroy" do
    it "delete the friendship" do
      delete :destroy, id: friendship.id
      expect(response).to be_redirect
    end
  end
end