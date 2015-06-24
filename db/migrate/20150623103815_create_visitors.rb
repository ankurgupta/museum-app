class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.datetime :enter_time
      t.datetime :exit_time
      t.timestamps null: false
    end
  end
end
