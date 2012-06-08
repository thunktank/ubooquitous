# spec/models/content_spec.rb
require 'spec_helper'

describe Content do
  it "has a valid factory" do
  	create(:content).should be_valid
  end
  it { should belong_to(:book_version) }
  it { should validate_presence_of(:book_version_id) }   
end
