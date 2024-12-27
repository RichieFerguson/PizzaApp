class ChangeRoleToStringInUsers < ActiveRecord::Migration[8.0] # or 8.0
  def change
    remove_column :users, :role, :integer
    add_column :users, :role, :string, default: "chef", null: false
  end
end
