class AddColumnTimeToCigarettes < ActiveRecord::Migration
  def up
    add_column :cigarettes, :health_cost, :float
  end

  def down
    remove_column :cigarettes, :health_cost
  end
end
