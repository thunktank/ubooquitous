class Book < ActiveRecord::Base
  has_many: book_versions
  belongs_to :library 
end
