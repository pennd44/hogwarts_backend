Rails.application.routes.draw do
  resources :announcements
  resources :assignment_questions
  resources :student_assignments
  resources :assignments
  resources :users
  resources :characters
  resources :sorting_hat_answers
  resources :sorting_hat_questions

  get "/student_characters", to: "characters#student_characters" 
  get "/teacher_characters", to: "characters#teacher_characters"
  get "/gryffindor_students", to: "characters#gryff_students"
  get "/ravenclaw_students", to: "characters#ravenclaw_students"
  get "/hufflepuff_students", to: "characters#hufflepuff_students"
  get "/slytherin_students", to: "characters#slytherin_students"
  get "/teachers", to: "users#teachers"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
