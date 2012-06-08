# spec/models/book_version_spec.rb
require 'spec_helper'

describe BookVersion do
  it "has a valid factory" do
  	create(:book_version).should be_valid
  end
  it { should belong_to(:book) }
  it { should validate_presence_of(:book_id) }   
  it { should have_and_belong_to_many(:authors) }
  it { should belong_to(:publisher) }
  it { should have_many(:contents).dependent(:destroy) }
end
