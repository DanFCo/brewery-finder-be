require "pry"
require "rest-client"
require "json"




page = 1

response = RestClient.get("https://api.openbrewerydb.org/breweries?page=#{page}&per_page=50")
data = JSON.parse(response)
collection = data


while data.length == 50
  page = page + 1
  response = RestClient.get("https://api.openbrewerydb.org/breweries?page=#{page}&per_page=50")
  data = JSON.parse(response)
  collection += data
  puts "page #{page} added"

end


collection.map do |x|

  Brewery.create(
    name: x["name"],
    brewery_type: x["brewery_type"],
    street: x["street"],
    city: x["city"],
    state: x["state"],
    postal_code: x["postal_code"],
    country: x["country"],
    longitude: x["longitude"],
    latitude: x["latitude"],
    phone: x["phone"],
    website: x["website"]
  )
end


puts "done with all #{page} pages "
