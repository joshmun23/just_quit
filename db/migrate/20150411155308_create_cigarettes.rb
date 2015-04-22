class CreateCigarettes < ActiveRecord::Migration
  def change
    create_table :cigarettes do |t|
      t.float :cost, null: false
      t.integer :state_id, null: false, unique: true
    end
  end
end
