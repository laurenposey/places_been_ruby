require("sinatra")
require("sinatra/reloader")
require("./lib/places_been")
also_reload("lib/**/*.rb")

get("/") do
  @places = Place.all_places()
  erb(:index)
end

post("/places_been") do
  description = params.fetch("description")
  places = Place.new(description)
  places.save()
  erb(:success)
end
