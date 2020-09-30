class Character < ApplicationRecord
    has_many :users
    
    def self.students
        Character.all.select do |character|
            character.is_student
        end
    end
end
