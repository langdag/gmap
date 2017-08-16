class MapsController < ApplicationController


  def index
	@store = Store.first
    #@event.lat, @event.lon = lat_lon(@event.full_address)
  end 



  def update

    #@event.lat, @event.lon = lat_lon(params[:event]['full_address'])

  end

  
  def lat_lon
    # Escape any non_ASCII characters and convert the string into a URI object.
    url = URI('https://maps.googleapis.com/maps/api/geocode/json')
    api_key = '&key=AIzaSyBiJraOJLQYIvr3CP9oZ3EhuMzw0ZTt11o'
    url.query = URI.encode_www_form({ address: "#{@store.api_query}+#{api_key}" })
    res = Net::HTTP::get_response(url)
    json_data = res.body if res.is_a?(Net::HTTPSuccess)
    #url = URI.parse((encoded_url))

    # Make the request to retrieve the JSON string
    #response = open(url).read

    # Convert the JSON string into a Hash object
    result = JSON.parse(json_data)

    # Extract the latitude and longitude and return them
    lat = result['results'][0]['geometry']['location']['lat']
    lon = result['results'][0]['geometry']['location']['lng']
    @store.lat = lat
    @store.lng = lon
    @store.save
  end

end
