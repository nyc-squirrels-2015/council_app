require 'rails_helper'

describe CouncilsController do
  let(:user) {FactoryGirl.create :user}
  let(:council) { FactoryGirl.create :council }

  before do
    stub_current_user user
  end

  describe "#index" do
    it "assigns the councils to Council.all" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "assigns the council to Council.new " do
      get :new
      expect(assigns(:council)).to be_a_new(Council)
    end
  end

  describe "#create" do
    it "creates the council if valid params" do
      post :create, council: FactoryGirl.attributes_for(:council)

      expect(response).to be_redirect
    end
  end

  describe "#edit" do
    it "assigns the council to the council" do
      get :edit, id: council.id
      expect(assigns(:council)).to eq(council)
    end
  end

  describe "#update" do
    it "updates the council if valid params" do
      put :update, id: council.id,
        council: {
        council_name: 'Photography',
        user_id: 1
      }

      expect(response).to be_redirect
    end
  end

  describe "#destroy" do
    it "delete the council" do
      delete :destroy, id: council.id
      expect(response).to be_redirect
    end
  end
end