# spec/models/library_spec.rb
require 'spec_helper'

describe Library do
  it "has a valid factory" do
  	FactoryGirl.create(:library).should be_valid
  end
  it { should belong_to(:member) }
     
  it "is invalid without an owner (member_id)" do
  	FactoryGirl.build(:library, member_id: nil).should_not be_valid
  end	
  it "has 0 or more books" do
  	FactoryGirl.build(:library).books.count >= 0
  end
end
