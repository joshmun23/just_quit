class AddNetWorthToUsers < ActiveRecord::Migration
  def up
    add_column :users, :net_worth_id, :integer
  end

  def down
    remove_column :users, :net_worth_id
  end
end
