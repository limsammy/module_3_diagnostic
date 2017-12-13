class SearchService

  def initialize(zip)
    @zip = zip
    api_key = 'K0WSG1pYDhLiVdIwBQh0gw60DJmKWhle5xa6NE4g'
    @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?location=#{zip}&limit=10&api_key=#{api_key}&format=JSON") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_stations
    JSON.parse(conn.get.body, symbolize_names: true)
  end

  private
    attr_reader :zip, :conn
end