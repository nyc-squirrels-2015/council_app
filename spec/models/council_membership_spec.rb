require 'rails_helper'
require 'shoulda/matchers'

describe CouncilMembership do

  context "validations" do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :council_id }
  end

  context "associations" do
    it { should belong_to(:council) }
    it { should belong_to(:member).class_name('User') }
  end

end

