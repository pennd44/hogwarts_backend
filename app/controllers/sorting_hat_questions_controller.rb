class SortingHatQuestionsController < ApplicationController

    def index
        questions = SortingHatQuestion.all 
        render json: questions, include: [:sorting_hat_answers]
    end


end
