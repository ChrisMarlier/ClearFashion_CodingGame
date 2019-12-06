class Fights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights
    add_column :fights, :date, :datetime
    add_column :fights, :pastry1, :integer
    add_column :fights, :pastry2, :integer
    add_column :fights, :choiceDone, :boolean, default:false
    add_index :fights, :pastry1
    add_index :fights, :pastry2
  end
end
