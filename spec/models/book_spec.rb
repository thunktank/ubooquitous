# spec/models/book_spec.rb
require 'spec_helper'

describe Book do
  it "has a valid factory" do
  	create(:book).should be_valid
  end
  it { should have_many(:book_versions).dependent(:destroy) }
  it { should belong_to(:library) }
  it { should validate_presence_of(:library_id) }   
end

