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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
