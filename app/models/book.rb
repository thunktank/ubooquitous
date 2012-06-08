class Book < ActiveRecord::Base
  has_many :book_versions, :inverse_of => :book, :dependent => :destroy
  belongs_to :library, :inverse_of => :books
  validates_presence_of :library_id

# not sure about these methods - adapted from member from omniauth 
# basically, we want latest book_version details to flow through to book
# what I'm trying to do here is populate a book, based on a book_version

  def self.from_book_version(bv)
  	find_by_title_and_published(bv["title"], bv["published"]) || create_with_book_version(bv) 
  end	

  def self.create_with_book_version(bv)
  	create do |book|
  		book.title = bv["title"]
  		book.edition = bv["edition"]
  		book.isbn = bv["isbn"]
  		book.published = bv["published"]
  	end
  end
end
