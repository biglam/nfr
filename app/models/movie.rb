class Movie < ActiveRecord::Base
	has_many :votes

	def get_data_from_omdb
		moviename = self.title.split.join('+')
		omdb_details = HTTParty.get("http://www.omdbapi.com/?t=#{moviename}&y=&tomatoes=true&r=json")
		
		self.title = omdb_details['Title']
		self.year = omdb_details['Year'].to_i
		self.imdbranking = omdb_details['imdbRating']
		self.tomatorating = omdb_details['tomatoRating']
		self.takings = omdb_details['BoxOffice']

		# binding.pry;''
		# self.save
	end

	def update_points
		# binding.pry;''
		self.flixratingspoints = votes.map { |vote| vote.points}.reduce(:+)
		self.save
	end
end
