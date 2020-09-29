class Announcement < ApplicationRecord
    belongs_to :teacher, foreign_key: "teacher_id", class_name: "User"
end
