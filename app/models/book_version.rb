class BookVersion < ActiveRecord::Base
  attr_accessible :edition, :isbn, :published, :title
  belongs_to :book, :inverse_of => :book_versions
	validates_presence_of :book_id
  has_and_belongs_to_many :authors
  belongs_to :publisher, :inverse_of => :book_versions
	validates_presence_of :publisher_id
  has_many :contents, :inverse_of => :book_version, :dependent => :destroy
end
