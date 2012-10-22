class CreateG1s < ActiveRecord::Migration
  def change
    create_table :g1s do |t|

      t.timestamps
    end
  end
end
