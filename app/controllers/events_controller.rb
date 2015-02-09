class EventsController < ApplicationController

  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def show

  end

  private

  def event_params
    params.require(:event).permit(:description, :date, :requires_id, :location_id)
  end

end
