class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :location
      t.string :media_type

      t.timestamps
    end
  end
end
