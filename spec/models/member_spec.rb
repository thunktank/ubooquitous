# spec/models/ember_spec.rb
require 'spec_helper'

describe Member do
  it "has a valid factory" do
  	create(:member).should be_valid
  end
  it { should have_many(:libraries).dependent(:destroy) }
  it { should have_many(:identities).dependent(:destroy) }
end

