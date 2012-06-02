class CreateAuthorBookVersionJoinTable < ActiveRecord::Migration
	def change
		create_table :authors_book_versions, :id => false do |t|
		  t.integer :author_id
		  t.integer :book_version_id
		end
	end
end
