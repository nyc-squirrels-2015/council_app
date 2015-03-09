require 'rails_helper'
require 'shoulda/matchers'
describe Answer do
  before(:each) do
    @answer = Answer.new(question_id: 5 , user_id:1)
  end

  context "validations" do
      it { should validate_presence_of :question_id}
      it { should validate_presence_of :user_id }
      it { should validate_inclusion_of(:like).in_array([true, false]) }
  end

  context "Association" do
    it {should belong_to(:user)}
    it {should belong_to(:question)}
  end

  it "Answer status should be automatically initialize to be false" do
    expect(@answer.like).to be nil
  end

end