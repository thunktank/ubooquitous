# spec/models/library_spec.rb
require 'spec_helper'

describe Library do
  it "has a valid factory" do
  	create(:library).should be_valid
  end
  it { should belong_to(:member) }
  it { should validate_presence_of(:member_id) }   
  it { should have_many(:books).dependent(:destroy) }
end
