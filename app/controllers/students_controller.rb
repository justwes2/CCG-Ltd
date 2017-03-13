class StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @events
  end

  def show
    @student = Student.find(params[:id])
    render json: @events
  end

  def new
    @student = Student.new
  end

  def create
      @student = Student.new(student_params)
        if @student.save
          frender json: @student, status: :created
        else
          render json: @message.errors, status: :unprocessable_entity
        end
      end
    end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update!(event_params)
      render json: @student
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    render json: {message: "success"}, status: :ok


  end

  private
  def student_params
    params.require(:student).permit(:date, :time, :name, :location, :organizer, :student_url)
  end
end
