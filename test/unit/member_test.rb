require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "find by name" do
    member = Member.create(:name => "Book Worm")
    assert_equal member, Member.find_by_name("Book Worm")
  end

  test "has identities" do
  	member = Member.create;
  	3.times do 
  		member.identities.create(:)
  end	
end
