MyApp.get "/process_edit_movie_form/:potato" do
  @movie = Movie.find_by_id(params[:potato])

  # Alternative
  # @movie.update_attributes(...)

  @movie.title = params["banana_title"]
  @movie.director_id = params["potato_number"]
  @movie.save
  erb :"updated"
end

MyApp.get "/form_for_editing_movie/:banana" do
  @movie = Movie.find_by_id(params[:banana])
  erb :"edit_movie_form"
end

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