class CreateUserCigarettes < ActiveRecord::Migration
  def change
    create_table :user_cigarettes do |t|
      t.integer :user_id, null: false
      t.integer :cigarette_id, null: false

      t.timestamps null: false
    end

    add_index :user_cigarettes, [:user_id, :cigarette_id], unique: true
  end
end
