class AddMemberIdColumnToIdentity < ActiveRecord::Migration
  def change
  	change_table :identities do |t|
  	  t.references :member
  	end
  end
end
