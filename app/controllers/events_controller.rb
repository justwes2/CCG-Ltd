class EventsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      # format.html {render :index}
      format.json {render json: @events}
    end
  end

  def show
    @event = Event.find(params[:id])
    respond_to do |format|
      # format.html {render :show}
      format.json {render json: @event}
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html {redirect_to @event, notice "Event added"}
        format.json {render json: @event, status: :created, location @event}
      else
        format.html {render :new}
        format.json {render json: @event.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:date, :time, :name, :location, :organizer, :event_url)
  end
end
