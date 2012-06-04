# spec/models/publisher_spec.rb
require 'spec_helper'

describe Publisher do
  before(:each) { Publisher.create!(:name => 'Prentice Hall') }
  it "has a valid factory" do
  	FactoryGirl.create(:publisher).should be_valid
  end
  it { should have_many(:book_versions) }
  it { should validate_uniqueness_of(:name) }
end
