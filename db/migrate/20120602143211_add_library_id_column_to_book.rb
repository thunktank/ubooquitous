class AddLibraryIdColumnToBook < ActiveRecord::Migration
  def change
  	change_table :books do |t|
  		t.references :library
		end
  end
end
