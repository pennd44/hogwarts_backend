class AssignmentsController < ApplicationController

    def index
        assignments = Assignment.all 
        render json: assignments, except: [:updated_at, :created_at], include: [:assignment_questions]
    end
end
