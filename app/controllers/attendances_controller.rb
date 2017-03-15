class AttendancesController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @attendances = @event.attendances
    # @students = Student.find_by(attendance_params[:student_id])
    puts "====================#{@students}"

    respond_to do |format|
      # format.html {render :index}
      format.json {render json: @attendances}
    end
  end

  def new
    @event = Event.find(params[:event_id])
    @attendance = @event.attendances.new
  end

  def create
    @event = Event.find(attendance_params[:event_id])
    puts "====================#{attendance_params[:student_id]}"
    @student = Student.find(attendance_params[:student_id])

    puts "+=+=+=+=+=+=+=+=+ event:#{@event}"
    puts "+=+=+=+=+=+=+=+=+ student:#{@student.inspect}"
    existing_attendance = Attendance.find_by(event: @event, student: @student)
    unless existing_attendance
      puts "+=+=+=+=+=+=+=+=+ I'm here"
      @attendance = @event.attendances.create!(comment: attendance_params[:comment], student: @student)
    end
    respond_to do |format|
      if @attendance.save
        puts "is saved"
        format.html { redirect_to @event, notice: 'Attendance was successfully created.' }
        format.json { render json: @attendance, status: :created }
      else
        puts "no save"
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
    # redirect_to event_path(@event)
  end

  private
  def attendance_params
    params.require(:attendance).permit(:student_id, :event_id, :comment)
  end

end
