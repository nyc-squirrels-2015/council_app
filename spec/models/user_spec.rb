require 'rails_helper'
require 'shoulda/matchers'

describe User do

  context "validations" do
    it { should validate_presence_of :firstname }
    it { should validate_presence_of :lastname }
    it { should validate_presence_of :email }
  end

  context "associations" do
    it { should have_many (:questions) }
    it { should have_many (:answers) }
    it { should have_many (:friendships) }
    it { should have_many(:friends).through(:friendships) }
    it { should have_many (:councils) }
    it { should have_many (:council_memberships) }
    it { should have_many(:attended_councils).through(:council_memberships) }
  end
end
