class AddDefaultsToMovies < ActiveRecord::Migration
  def change
  	change_column :movies, :imdbranking, :float, :default => 0.0
  	change_column :movies, :tomatorating, :float, :default => 0.0
  	change_column :movies, :takings, :string, :default => "Not Available"
  	change_column :movies, :flixratingspoints, :integer, :default => 0
  end
end
