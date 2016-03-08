class VotesController < ApplicationController

	def multicast
		# if movie exists
		# create vote with correct score and user
		# next movie
		
		pointscore = [3,2,1]
		params[:movie_id].each do |num, movie|
			if Movie.where(id: movie).count != 0
				current_movie = Movie.find(movie)
				current_movie.votes.create(user: current_user, points: pointscore[0])
				current_movie.update_points
			end
			pointscore.rotate!
		end
		redirect_to top3_movies_path
	end

end
