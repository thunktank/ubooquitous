class Content < ActiveRecord::Base
  attr_accessible :media_type
  attr_protected :location
  belongs_to :book_version
end
