require 'rails_helper'
require 'shoulda/matchers'
describe Question do
  before(:each) do
    @question = Question.new(council_id: 1, user_id:1, content: "What you think of this?")
  end


  context "validations" do
      it { should validate_presence_of :council_id}
      it { should validate_presence_of :user_id }
  end

  context "Association" do
    it {should belong_to(:user)}
    it{should belong_to(:council)}
    # it{should have_many(:members).through(:council_memberships)}
    it{should have_many(:answers)}
  end

  it "council_id should be automatically titleized before save" do
    expect(@question.council_id).not_to be nil
  end

  it "user_id should be automatically titleized before save" do
    expect(@question.user_id).not_to be nil
  end

  it "content should be automatically titleized before save" do
    expect(@question.content).not_to be nil
  end
end