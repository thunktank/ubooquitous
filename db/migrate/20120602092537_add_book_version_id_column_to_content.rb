class AddBookVersionIdColumnToContent < ActiveRecord::Migration
  def change
  	change_table :contents do |t|
  	  t.references :book_version
  	end
  end
end
