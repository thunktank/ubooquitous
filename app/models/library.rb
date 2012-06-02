class Library < ActiveRecord::Base
	has_many :books, :inverse_of => :library
	belongs_to :member, :inverse_of => :libraries
	validates_presence_of :member_id
end
