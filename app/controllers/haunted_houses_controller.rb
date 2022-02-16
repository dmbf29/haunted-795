class HauntedHousesController < ApplicationController
  def show
    @haunted_house = HauntedHouse.find(params[:id])
  end
end
