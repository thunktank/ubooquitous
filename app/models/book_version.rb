class BookVersion < ActiveRecord::Base
  attr_accessible :edition, :isbn, :published, :title
  belongs_to :book
  has_and_belongs_to_many :authors
  belongs_to :publisher
  has_many :contents
end
