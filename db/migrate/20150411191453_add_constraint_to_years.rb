class AddConstraintToYears < ActiveRecord::Migration
  def change
    change_column :years, :year, :string, null: false, unique: true
  end
end
