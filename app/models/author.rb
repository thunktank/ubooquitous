class Author < ActiveRecord::Base
  attr_accessible :birthday, :birthplace, :first_name, :last_name, :full_name
  has_and_belongs_to_many :book_versions
  validates_presence_of :birthday, :birthplace, :first_name, :last_name, :full_name
end
