class AddMemberIdColumnToLibrary < ActiveRecord::Migration
  def change
  	change_table :libraries do |t|
  	  t.references :member
  	end
  end
end
