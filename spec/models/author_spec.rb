# spec/models/author_spec.rb
require 'spec_helper'

describe Author do
  it "has a valid factory" do
  	create(:author).should be_valid
  end
  it { should have_and_belong_to_many(:book_versions) }
  it { should validate_presence_of :birthday }
  it { should validate_presence_of :birthplace }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :full_name }
  it { should validate_presence_of :last_name }
end
