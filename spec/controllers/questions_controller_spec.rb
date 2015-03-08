require 'rails_helper'

describe QuestionsController do
  let(:user) {FactoryGirl.create :user}
  let(:council){FactoryGirl.create :council}
   let(:question) { FactoryGirl.create :question }

   before do
    stub_current_user user
   end

  describe "#index" do
    it "Show all question to which belongs to user" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "assigns the question to Question.new " do
      get :new
      expect(assigns(:question)).to be_a_new(Question)
    end
  end

  describe "#create" do
    it "creates the question if valid params" do
      post :create, question: FactoryGirl.attributes_for(:question)
      expect(response).to be_redirect
    end
  end


  describe "#destroy" do
    it "delete the question" do
      delete :destroy, id: question.id
      expect(response).to be_redirect
    end
  end
end