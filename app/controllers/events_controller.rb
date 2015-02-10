class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @location = Location.find(params[:location_id])
  end

  def create
    @event = Event.new(event_params)
    @event.location_id = params[:location_id]
    @location = Location.find(params[:location_id])
      if @event.save
        redirect_to location_path(@location)
      else
        render :new
      end
  end

  def edit
    @event = Event.find(params[:id])
    @location = Location.find(params[:location_id])
  end

  def update
    @location = Location.find(params[:location_id])
    @event = Event.find(params[:id])
      if @event.update(event_params)
        redirect_to location_path(@location)
      end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:location_id])
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to location_path(@location)
  end

  private

  def event_params
    params.require(:event).permit(:description, :date, :requires_id, :location_id)
  end

end
