class CreateCmLogs < ActiveRecord::Migration
  def change
    create_table :cm_logs do |t|
      t.integer :lastid
      t.integer :count
      t.integer :allpoints

      t.timestamps
    end
  end
end
