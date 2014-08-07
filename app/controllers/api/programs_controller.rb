module Api
  class ProgramsController < ApplicationController

    respond_to :json

    def index
      @programs =  Program.all
    end

    def show
      @program = Program.find(params[:id])
    end

    def workouts
      @program = Program.find(params[:id])
      @workouts = @program.workouts
    end

    def workout_exercises
      @workout = Workout.find(params[:id])
      @workout_exercises = @workout.workout_exercises
    end

  end
end
