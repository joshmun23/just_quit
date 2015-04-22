class CreateLocation < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :state, null: false, unique: true
    end
  end
end
