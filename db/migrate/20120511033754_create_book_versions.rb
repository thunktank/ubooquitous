class CreateBookVersions < ActiveRecord::Migration
  def change
    create_table :book_versions do |t|
      t.string :title
      t.string :edition
      t.string :isbn
      t.datetime :published

      t.timestamps
    end
  end
end
