class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :image
      t.integer :year
      t.float :imdbranking
      t.float :tomatorating
      t.string :takings
      t.integer :flixratingspoints

      t.timestamps null: false
    end
  end
end
