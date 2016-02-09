MyApp.get "/" do
  erb :"homepage"
end

# Shows the form for adding a director.
MyApp.get "/directors/creating" do
  erb :"b/new_director"
end