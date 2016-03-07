json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :image, :year, :imdbranking, :tomatorating, :takings, :flixratingspoints
  json.url movie_url(movie, format: :json)
end
