class Member < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :libraries
end
