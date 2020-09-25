class CharactersController < ApplicationController

    def index
        characters = Character.all 
        render json: characters, except: [:updated_at, :created_at]
    end

    def student_characters
        students = Character.all.select do |character| 
            character.is_student
        end
        render json: students, except: [:updated_at, :created_at]
    end

    def teacher_characters
        teachers = Character.all.select do |character| 
            character.is_student == false
        end
        render json: teachers, except: [:updated_at, :created_at]
    end


end
