require 'rails_helper'
require 'shoulda/matchers'
describe Council do
  before(:each) do
    @council = Council.new(council_name:"travel", user_id:1)
  end


  context "validations" do
      it { should validate_presence_of :council_name}
      it { should validate_presence_of :user_id }
  end

  it "council_name should be automatically titleized before save" do
    expect(@council.council_name).not_to be nil
  end

  it "council_name should be automatically titleized before save" do
    expect(@council.user_id).not_to be nil
  end
end