class CreateDollars < ActiveRecord::Migration
  def change
    create_table :dollars do |t|
      t.integer :spent
      t.integer :earned
      t.integer :saved
      t.integer :user_id, null: false, unique: true
    end
  end
end
