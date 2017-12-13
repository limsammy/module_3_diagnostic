class SearchController < ApplicationController
  def index
    @stations = StationService.new(params[:q])
  end
end