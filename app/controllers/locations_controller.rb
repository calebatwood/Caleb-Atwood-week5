class LocationsController < ApplicationController

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

  def destroy

  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :zipcode)
  end

end
