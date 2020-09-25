class SortingHatQuestionsController < ApplicationController

    def index
        questions = SortingHatQuestion.all 
        render json: questions, except: [:updated_at, :created_at], include: :sorting_hat_answers 
    end


end
