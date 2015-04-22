class AddColumnToCigarettes < ActiveRecord::Migration
  def change
    add_column :cigarettes, :rank, :integer
  end
end
