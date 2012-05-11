class Author < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :first_name, :full_name, :last_name
  has_and_belongs_to_many :book_versions
end
