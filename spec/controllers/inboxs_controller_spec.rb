require 'rails_helper'

describe InboxsController do

  before do
    user = FactoryGirl.create :user
    council = FactoryGirl.create :council
    council.members << user

    stub_current_user user
  end

  describe "#index" do
    it "assigns the inbox to Inbox.all" do
      get :index
      expect(response).to be_success
    end
  end
end