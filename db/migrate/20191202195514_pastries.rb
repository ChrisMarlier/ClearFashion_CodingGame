class Pastries < ActiveRecord::Migration[6.0]
  def change
    create_table :pastries
    add_column :pastries, :name, :string
  end
end
