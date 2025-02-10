class UserWorkSchedule < ApplicationRecord
  belongs_to :user
  belongs_to :work_schedule
end
