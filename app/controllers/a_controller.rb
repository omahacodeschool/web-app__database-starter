# Processes the movie form.
MyApp.post "/add_movie" do
  x = Movie.new
  x.title = params[:movie_title]
  x.director_id = params[:director]
  x.save

  erb :"a/success_movie"
end

# Processes the form to add a director.
MyApp.get "/add_director" do  
  x = Director.new
  x.name = params["director_name"]
  x.save

  # binding.pry # What is `x`?

  erb :"a/created_director"
end