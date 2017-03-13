class AttendancesController < ApplicationController

  def index
    @attendances = Attendance.all
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
    @event = Event.find(params[:event_id])
    @student = Student.find_or_create_by(name: params[:student_name])


    existing_attendance = Attendance.find_by(event: @event, student: @student)
    unless existing_attendance
      @attendance = @event.attendances.create!(student: @student)
    end
    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @event, notice: 'Attendance was successfully created.' }
        format.json { render json: @attendance, status: :created }
      else
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
    # redirect_to event_path(@event)
  end

end
