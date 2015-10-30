# Q0: Why is this error being thrown?

There is currently no Pokemon model. When the controller calls for pokemon, there's nothing there.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The seeds file created 4 pokemon on startup. In the home_controller file, trainerless_pokemon.sample selects a random pokemon in the pokemon table that doesn't have a trainer. All the wild pokemon don't have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button that when clicked, that redirects to a capture route using the patch method. Capture_path(id: @pokemon) passes in the id of the pokemon being captured.

# Question 3: What would you name your own Pokemon?

I would get a Jynx and name it Frostitute. Hah. I'm funny.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in a path that redirected to the individual trainer's page. This path needed an additional id that associated with the owner of the pokemon.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
