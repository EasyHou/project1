class PokemonsController < ApplicationController
	def index
		@pokemon = Pokemon.all
	end

	def new
		@pokemon = Pokemon.new
	end

	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(:id => current_trainer.id)
	end

	def create
		@pokemon = Pokemon.new poke_params
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to trainer_path(:id => current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemons_new_path 
		end
	end


	private 
	def poke_params
		params.require(:pokemon).permit(:name)
	end

end
