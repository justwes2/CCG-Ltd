class EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def new
    @event = Event.new
  end

  def create
      @event = Event.new(event_params)
        if @event.save!
          render json: @event, status: :created
        else
          render json: @message.errors, status: :unprocessable_entity
        end
  end


  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
      if @event.update!(event_params)
        render json: @event
      else
        render json: @message.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: {message: "success"}, status: :ok
  end

  private
  def event_params
    params.require(:event).permit(:date, :time, :name, :location, :organizer, :event_url)
  end
end
