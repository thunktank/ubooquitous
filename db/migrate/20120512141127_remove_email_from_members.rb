class RemoveEmailFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :email
      end

  def down
    add_column :members, :email, :string
  end
end
