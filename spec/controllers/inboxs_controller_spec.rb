require 'rails_helper'

describe InboxsController do
  let(:user) {FactoryGirl.create :user}
  let(:council) { FactoryGirl.create :council }

  before do
    stub_current_user user
  end

  describe "#index" do
    it "assigns the inbox to Inbox.all" do
      get :index
      expect(response).to be_success
    end
  end
end