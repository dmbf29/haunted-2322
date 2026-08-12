class HousesController < ApplicationController
  # /houses/1
  def show
    @house = House.find(params[:id])
    @monster = Monster.new
  end
end
