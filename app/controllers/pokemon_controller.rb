class PokemonController < ApplicationController
	
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

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new poke_params
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.save
		redirect to trainer_path(:id => current_trainer.id)
	end

	private 
	def poke_params
		params.require(:pokemon).permit(:name)
	end

end
