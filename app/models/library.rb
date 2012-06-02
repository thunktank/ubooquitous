class Library < ActiveRecord::Base
	belongs_to :member, :inverse_of => :libraries
end
