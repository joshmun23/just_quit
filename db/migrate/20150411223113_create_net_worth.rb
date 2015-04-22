class CreateNetWorth < ActiveRecord::Migration
  def change
    create_table :net_worths do |t|
      t.integer :income
      t.integer :expenses
      t.integer :user_id, null: false, unique: true
    end
  end
end
