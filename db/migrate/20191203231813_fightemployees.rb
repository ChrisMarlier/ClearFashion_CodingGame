class Fightemployees < ActiveRecord::Migration[6.0]
  def change
    create_table :fightemployees
    add_column :fightemployees, :id_employee, :integer
    add_column :fightemployees, :id_fight, :integer
    add_column :fightemployees, :customization, :string
    add_index :fightemployees, :id_employee
    add_index :fightemployees, :id_fight
  end
end
