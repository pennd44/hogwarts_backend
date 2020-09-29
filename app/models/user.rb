class User < ApplicationRecord
    has_many :students, class_name: "User", foreign_key: "teacher_id"
    belongs_to :teacher, class_name:"User", optional: true
    has_many :student_assignments, foreign_key: "student_id"
    has_many :assignments, through: :student_assignments
    has_many :announcements, foreign_key: "teacher_id"
    belongs_to :character, optional: true

    has_secure_password

    def full_name 
        first_name + " " + last_name 
    end



end
