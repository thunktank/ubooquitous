# spec/models/author_spec.rb
require 'spec_helper'

describe Author do
  it "has a valid factory" do
  	FactoryGirl.create(:author).should be_valid
  end
  it { should have_and_belong_to_many(:book_versions) }
end
