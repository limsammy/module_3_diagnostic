class SearchController < ApplicationController
  def index
    @stations = SearchService.new(params[:q]).get_station
    binding.pry
  end
end