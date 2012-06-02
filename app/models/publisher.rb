class Publisher < ActiveRecord::Base
  attr_accessible :name
  has_many :book_versions, :inverse_of => :publisher, :dependent => :destroy
end
