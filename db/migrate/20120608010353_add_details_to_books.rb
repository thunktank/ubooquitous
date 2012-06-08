class AddDetailsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :edition, :string
    add_column :books, :isbn, :string
    add_column :books, :published, :datetime
  end
end
