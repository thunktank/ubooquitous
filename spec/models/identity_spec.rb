# spec/models/identity_spec.rb
require 'spec_helper'

describe Identity do
	it "has a valid factory" do
  	FactoryGirl.create(:identity).should be_valid
  end
	it { should belong_to(:member) }
	it { should validate_presence_of(:member_id) }   
	it { should validate_presence_of(:password) }   
	it { should validate_presence_of(:name) }   
	it { should validate_uniqueness_of(:email) }   
end

