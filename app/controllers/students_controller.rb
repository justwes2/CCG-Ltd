class StudentsController < ApplicationController

  def index
    @students = Student.all
    respond_to do |format|
      # format.html {render :index}
      format.json {render json: @students}
    end
  end

  def show
    @student = Student.find(params[:id])
    respond_to do |format|
      # format.html {render :show}
      format.json {render json: @student}
    end
  end

  def new
    @student = Student.new
  end

  def create
      @student = Student.new(student_params)
      respond_to do |format|
        if @student.save
          format.html {redirect_to @student, notice: "Student added"}
          format.json {render json: @student, status: :created, location: @student}
        else
          format.html {render :new}
          format.json {render json: @student.errors, status: :unprocessable_entity}
        end
      end
    end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:date, :time, :name, :location, :organizer, :student_url)
  end
end
