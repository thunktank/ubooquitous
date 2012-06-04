class Library < ActiveRecord::Base
	belongs_to :member, :inverse_of => :libraries
	validates_presence_of :member_id
	has_many :books, :inverse_of => :library, :dependent => :destroy
end
