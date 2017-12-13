class SearchController < ApplicationController
  def index
    byebug
    @stations = StationService.new(params[:q])
  end
end