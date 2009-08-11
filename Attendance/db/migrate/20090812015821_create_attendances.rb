class CreateAttendances < ActiveRecord::Migration
  def self.up
    create_table :attendances do |t|
      t.string :EmpId
      t.datetime :Entry_Timestamp
      t.integer :date_dim_id

      t.timestamps
    end
  end

  def self.down
    drop_table :attendances
  end
end
