class CreateWorkSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :work_schedules do |t|
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.integer :break_time, default: 0, null: false  # 休憩時間（分）

      t.timestamps
    end
  end
end
