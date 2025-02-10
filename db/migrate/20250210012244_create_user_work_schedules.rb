class CreateUserWorkSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :user_work_schedules do |t|
      t.references :user, null: false, foreign_key: true
      t.references :work_schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
