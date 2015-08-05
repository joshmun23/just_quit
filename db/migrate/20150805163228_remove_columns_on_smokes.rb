class RemoveColumnsOnSmokes < ActiveRecord::Migration
  def change
    remove_column :smokes, :total_count
    remove_column :smokes, :total_cost
  end
end
