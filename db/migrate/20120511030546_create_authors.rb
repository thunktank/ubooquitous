class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.datetime :birthday
      t.string :birthplace

      t.timestamps
    end
  end
end
