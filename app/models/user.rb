class User < ApplicationRecord
    has_many :students, class_name: "User", foreign_key: "teacher_id"
    belongs_to :teacher, class_name:"User", optional: true
    has_many :student_assignments
    has_many :assignments, through: :student_assignments
    has_many :announcements
    belongs_to :character, optional: true

    has_secure_password

    def full_name 
        first_name + " " + last_name 
    end

    def teachers_students 
        User.all.select do |student| 
            student.teacher_id == self.id 
        end
    end

    def all_assignments
        StudentAssignment.all.select do |assignment|
            assignment.student_id == self.id 
        end
    end

end
