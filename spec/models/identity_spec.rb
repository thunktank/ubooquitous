# spec/models/identity_spec.rb
require 'spec_helper'

describe Identity do
	it "has a valid factory" do
  	create(:identity).should be_valid
  end
	it { should belong_to(:member) }
	it { should validate_presence_of(:member_id) }   
	it { should validate_presence_of(:password_digest) }   
  it { should validate_presence_of(:name) }   
  it { should validate_presence_of(:email) }   
end

