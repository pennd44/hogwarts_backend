Rails.application.routes.draw do
  resources :announcements
  resources :assignment_questions
  resources :student_assignments
  resources :assignments
  resources :users
  resources :characters
  resources :sorting_hat_answers
  resources :sorting_hat_questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
