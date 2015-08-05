class AddMethodColumnToSmokes < ActiveRecord::Migration
  def up
    add_column :smokes, :method, :string
  end
  def down
    remove_column :smokes, :method, :string
  end
end
