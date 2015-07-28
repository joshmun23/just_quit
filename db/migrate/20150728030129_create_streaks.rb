class CreateStreaks < ActiveRecord::Migration
  def change
    create_table :streaks do |t|
      t.integer :current_streak, default: 0, required: true
      t.integer :longest_streak, default: 0, required: true
      t.integer :current_slump, default: 0, required: true
      t.integer :longest_slump, default: 0, required: true
      t.integer :streak_id, required: true

      t.timestamps null: false
    end
  end
end
