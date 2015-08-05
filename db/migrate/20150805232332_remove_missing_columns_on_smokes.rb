class RemoveMissingColumnsOnSmokes < ActiveRecord::Migration
  def up
    add_column :smokes, :decision, :boolean
    add_column :smokes, :reason, :string
    add_column :smokes, :emotion, :string
    add_column :smokes, :habit, :string
  end
  def down
    remove_column :smokes, :decision
    remove_column :smokes, :reason
    remove_column :smokes, :emotion
    remove_column :smokes, :habit
  end
end
