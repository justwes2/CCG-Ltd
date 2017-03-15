class StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @students
  end

  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
      if @student.save!
        render json: @student, status: :created
      else
        render json: @message.errors, status: :unprocessable_entity
      end
    end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update!(student_params)
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
    params.require(:student).permit(:name, :email, :linkedin_url, :github_url, :bio, :photo_url)
  end
end
