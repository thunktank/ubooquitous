class BookVersion < ActiveRecord::Base
  attr_accessible :edition, :isbn, :published, :title
  belongs_to :book, :inverse_of => :book_versions
  has_and_belongs_to_many :authors
  belongs_to :publisher, :inverse_of => :book_versions
  has_many :contents, :inverse_of => :book_version, :dependent => :destroy
end
