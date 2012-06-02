class Member < ActiveRecord::Base
  attr_accessible :name
  has_many :libraries, :inverse_of => :member, :dependent => :destroy  
  has_many :identities, :inverse_of => :member, :dependent => :destroy

  def self.from_omniauth(auth)
  	find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_ominauth(auth) 
  end	

  def self.create_with_ominauth(auth)
  	create! do |member|
  		member.provider = auth["provider"]
  		member.uid = auth["uid"]
  		member.name = auth["info"]["name"]
  	end
  end
end
