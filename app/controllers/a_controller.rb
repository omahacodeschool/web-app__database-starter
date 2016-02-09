# Processes the form to add a director.
MyApp.get "/add_director" do  
  x = Director.new
  x.name = params["director_name"]
  x.save

  # binding.pry # What is `x`?

  erb :"a/created_director"
end