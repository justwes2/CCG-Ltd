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


    existing_attendance = Attedance.find_by(event: @event, student: @student)
    unless existing_attendance
      @event.attendance.create!(student: @student)
    end
    redirect_to event_path(@event)
  end

end
