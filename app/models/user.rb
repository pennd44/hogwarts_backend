class User < ApplicationRecord
    has_many :students, class_name: "User", foreign_key: "teacher_id"
    belongs_to :teacher, class_name:"User", optional: true
    has_many :student_assignments
    has_many :assignments, through: :student_assignments
    has_many :announcements
    belongs_to :character, optional: true

    has_secure_password

end
