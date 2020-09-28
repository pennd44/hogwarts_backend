class StudentAssignmentsController < ApplicationController

    def index 
        student_assignments = StudentAssignment.all 
        render json: student_assignments, include: :student
    end

    def create
        s_a = StudentAssignment.create(s_a_params)
        render json: s_a
    end

    def update 
        s_a = StudentAssignment.find_by(id: params[:id])

        s_a.update(s_a_params)
        render json: s_a, include: [:student]
    end

    private
    def s_a_params
        params.require(:student_assignment).permit(:text, :student_id, :assignment_id, :score, :feedback)
    end
end
