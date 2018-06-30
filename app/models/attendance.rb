class Attendance < ApplicationRecord
	belongs_to :student, required: false
end
