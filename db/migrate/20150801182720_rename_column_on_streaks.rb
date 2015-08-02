class RenameColumnOnStreaks < ActiveRecord::Migration
  def change
    rename_column :streaks, :streak_id, :user_id
  end
end
