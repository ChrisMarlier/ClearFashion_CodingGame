class Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users
    add_column :users, :name, :string
    add_column :users, :password, :string
  end
end
