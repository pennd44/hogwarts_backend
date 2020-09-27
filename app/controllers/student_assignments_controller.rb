class StudentAssignmentsController < ApplicationController

    def index 
        student_assignments = StudentAssignment.all 
        render json: student_assignments, include: :student
    end

    def create
        s_a = StudentAssignment.create(s_a_params)
        render json: s_a
    end

    private
    def s_a_params
        params.require(:student_assignment).permit(:text, :student_id, :assignment_id)
    end
end
