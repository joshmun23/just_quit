class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :year, null: false, unique: true
    end

    add_column :cigarettes, :year_id, :integer, null: false
  end
end
