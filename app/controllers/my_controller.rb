MyApp.get "/all_movies" do
  @movies = Movie.all
  erb :"movies_list"
end

MyApp.get "/view_movie/:banana" do
  @movie = Movie.find_by_id(params[:banana])
  erb :"single_movie"
end

MyApp.get "/delete_movie/:potato" do
  @movie = Movie.find_by_id(params[:potato])
  @movie.delete
  erb :"deleted"
end