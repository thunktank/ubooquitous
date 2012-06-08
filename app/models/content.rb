class Content < ActiveRecord::Base
  attr_accessible :media_type
  attr_protected :location
  belongs_to :book_version, :inverse_of => :contents
  validates_presence_of :book_version_id
  validates_presence_of :location
  validates_presence_of :media_type
end
