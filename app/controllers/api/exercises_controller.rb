module Api
  class ExercisesController < ApplicationController



    def index
      @exercises = Exercise.all
    end

    def show
      @exercise = Exercise.find(params[:id])
      @muscle = @exercise.muscle
      @secondary_muscles = @exercise.secondary_muscles
      @equipment = @exercise.equipment
      @level = @exercise.level
      @force_type = @exercise.force_type
      @mechanics_type = @exercise.mechanics_type
      @instructions = @exercise.instructions
      @exercise_type = @exercise.exercise_type

    end



  end
end