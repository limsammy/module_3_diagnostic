class SearchController < ApplicationController
  def index
    @stations = SearchService.new(params[:q]).get_stations
  end
end