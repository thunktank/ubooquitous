# spec/models/library_spec.rb
require 'spec_helper'

describe Library do
  it "has a valid factory"
  it { should belong_to(:member) }
     
  it "is invalid without an owner"
  it "has 0 or more books"
end
