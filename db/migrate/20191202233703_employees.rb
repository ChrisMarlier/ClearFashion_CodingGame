class Employees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees
    add_column :employees, :name, :string
    add_column :employees, :id_speciality, :integer
    add_index :employees, :id_speciality

  end
end
