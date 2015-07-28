class CreateSmokes < ActiveRecord::Migration
  def change
    create_table :smokes do |t|
      t.integer :total_count, default: 0, required: true
      t.float :total_cost, default: 0, required: true
      t.integer :user_id, required: true

      t.timestamps null: false
    end
  end
end
