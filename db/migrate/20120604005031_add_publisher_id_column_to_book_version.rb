class AddPublisherIdColumnToBookVersion < ActiveRecord::Migration
  def change
  	change_table :book_versions do |t|
  		t.references :publisher
		end
  end
end
