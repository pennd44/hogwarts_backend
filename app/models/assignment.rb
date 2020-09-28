class Assignment < ApplicationRecord
    has_many :student_assignments
    has_many :students, class_name:"User", foreign_key: "student_id", through: :student_assignments
    has_many :assignment_questions
end
