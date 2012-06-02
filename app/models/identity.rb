class Identity < OmniAuth::Identity::Models::ActiveRecord
  attr_accessible :name, :email, :password, :password_confirmation
  validates_presence_of :password, on: :create
  validates_presence_of :name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  belongs_to :member, :inverse_of => :identities
  validates :member_id, :presence => :true

  def self.find_with_omniauth(auth)
    find_by_provider_and_uid(auth['provider'], auth['uid'])
  end

  def self.create_with_omniauth(auth)
    Identity.create(uid: auth['uid'], provider: auth['provider'])
  end
end