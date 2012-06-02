class Book < ActiveRecord::Base
  has_many :book_versions, :inverse_of => :book, :dependent => :destroy
  belongs_to :library, :inverse_of => :books
  validates_presence_of :library_id
end
