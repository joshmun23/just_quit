class AddAnnualChangeColumnToCigarettes < ActiveRecord::Migration
  def change
    add_column :cigarettes, :change, :string
  end
end
