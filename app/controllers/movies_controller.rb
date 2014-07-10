class MoviesController < ApplicationController
	def new
	end

	def create
		@newMovie = Movie.create(movie_params)
		@newMovie.title = params[:movie][:title]
		@newMovie.duration = params[:movie][:time]
		@newMovie.age = params[:movie][:age]
		@newMovie.description = params[:movie][:description]
		
		@newMovie.save
		redirect_to @newMovie	 
	end

	def show
  		@movie = Movie.find(params[:id])
  		@time = dur(@movie.duration)
	end


	private

	def movie_params
  		params.require(:movie).permit(:foto)
  		params.require(:movie).permit(:video)
	end

	def dur (time)
		mins = time % 60
		hours = time / 60
		result = hours.to_s + ":"
		if mins > 10
			result = result + mins.to_s						
		else
			result = result + "0"+ mins.to_s
		end
		 return result 
	end


end

#rails generate model Movie title:string time:time age: integer foto:string video:string description:text
