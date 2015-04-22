class ChangeColumnsToCigarettes < ActiveRecord::Migration
  def change
    rename_column :cigarettes, :state_id, :location_id
  end
end
