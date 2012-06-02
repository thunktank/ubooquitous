class AddBookIdColumnToBookVersion < ActiveRecord::Migration
  def change
  	change_table :book_versions do |t|
  	  t.references :book
  	end
  end
end
