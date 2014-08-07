Rails.application.routes.draw do


  namespace :api, :defaults => {:format => :json} do

    #EXERCISES
    resources :exercises, :only => [:show, :index]

    #USERS
    resources :users
    get 'users/:user_id/exercise_history/:exercise_id', :to => 'users#exercise_history'
    get 'users/:user_id/current_workout_status', :to => 'users#current_workout_status'
    get 'users/:user_id/user_programs', :to => 'users#user_programs'

    match 'users/:id/assign_program', :to => 'users#assign_program', :via => [:post]
    match 'users/:id/save_program_history', :to => 'users#save_program_history', :via => [:post]

    #PROGRAMS
    resources :programs, :only => [:show, :index]
    get 'programs/:id/workouts', :to => 'programs#workouts'
    get '/workouts/:id/workout_exercises', :to => 'programs#workout_exercises'
  end


end
