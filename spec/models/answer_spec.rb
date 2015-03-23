require 'rails_helper'
require 'shoulda/matchers'
describe Answer do
  before(:each) do
    @u1 = User.create!(firstname:'a', password:'123456', lastname:'b', email:'gg@example.com')
    @u2 = User.create!(firstname:'b', password:'123456', lastname:'b', email:'ee@example.com')
    @q = Question.create!(user: @u1, council_id:3, content:'some content')
    @answer = Answer.create!(question: @q , user: @u2, like: false)
  end

  context "validations" do
      it { should validate_presence_of :question}
      it { should validate_presence_of :user }
      it { should validate_inclusion_of(:like).in_array([true, false]) }
  end


  context "custom validations" do
    before(:each) do
      @question = Question.new(user_id: 1, council_id: 1, content: " ")
    end
    
    it "should prevent a user from answering their own question" do
      @answer = Answer.new(question: @q, user: @u1, like: true)
      @answer.save
      @answer.errors.messages[:own_question].should eq ["You can't answer your own question."]
    end

    it "should prevent a user from answering the same question twice" do
      @answer = Answer.new(question: @q, user: @u2, like: true)
      @answer.save
      @answer.errors.messages[:duplicate].should eq ["You can't answer more than once."]
    end
  end

  context "Association" do
    it {should belong_to(:user)}
    it {should belong_to(:question)}
  end

  it "Answer status should be automatically initialize to be false" do
    expect(@answer.like).to be false
  end

end