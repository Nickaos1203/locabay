class AddIdentifiantToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string, default: ""
    add_column :users, :last_name, :string, default: ""
    add_column :users, :photo, :string, default: ""
  end
end
