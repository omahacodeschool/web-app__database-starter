MyApp.get "/" do
  erb :"homepage"
end

# Shows the form for adding a director.
MyApp.get "/directors/creating" do
  erb :"b/new_director"
end

MyApp.get "/directors" do
  @directors = Director.all

  erb :"b/all_directors"
end

# Shows the form for adding a director.
MyApp.get "/movies/creating" do
  @directors = Director.all
  erb :"b/new_movie"
end