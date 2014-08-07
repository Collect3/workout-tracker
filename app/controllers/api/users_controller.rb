module Api
  class UsersController < ApplicationController

    respond_to :json


    #CRUD
    def index
      @users = User.all;
    end

    def show
      @user = User.find(params[:id])
    end

    def create
      dob = Date.strptime(params[:date_of_birth], '%d/%m/%Y')
      @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], date_of_birth: dob, gender: params[:gender])

      respond_with @user do |format|
        if @user.save
          format.json { render json: @user.to_json }
        else
          format.json { render json: @user.errors, status: :unprocessable_entity}
        end
      end
    end

    def update
      respond_with do |format|
        if User.update(params[:id], first_name: params[:first_name], last_name: params[:last_name], app_skin_id: params[:app_skin_id])
          @user = User.find(params[:id])
          format.json { render json: @user.to_json }
        else
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end


    #GET
    def current_workout_status
      @user = User.find(params[:user_id])
      @current_workout = @user.program_histories.where(['date(program_histories.updated_at) = ?', Time.new.to_date])
    end

    def exercise_history
      @user = User.find(params[:id])
      @user_programs = @user.user_programs
      @user_program_histories = @user.program_histories
    end

    def user_programs
      @user = User.find(params[:id])
      @programs = @user.user_programs
    end


    #POST
    def assign_program
      @user_programs = UserProgram.create(user_id: params[:id], program_id: params[:program_id])

      respond_with @user_programs do |format|
        if @user_programs.save
          format.json { render json: @user_programs.to_json }
        else
          format.json { render json: @user_programs.errors, status: :unprocessable_entity}
        end
      end
    end

    def save_program_history
       @program_history = ProgramHistory.create(user_id: params[:id], program_id: params[:program_id], workout_id: params[:workout_id], workout_exercise_id: params[:workout_exercise_id], set_num: params[:set_num], time_val: params[:time_val], distance_val: params[:distance_val], weight_val: params[:weight_val], rep_val: params[:rep_val])

       respond_with @program_history do |format|
         if @program_history.save
           format.json { render json: @program_history.to_json }
         else
           format.json { render json: @program_history.errors, status: :unprocessable_entity}
         end
       end
    end



  end
end