require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'can instantialise a Movie' do
    expect(Movie.new).to be_valid
  end

  it 'can retrieve data from OMDB' do
    titanic = Movie.new(title: 'titanic')
    titanic.get_data_from_omdb
    expect(titanic.year).to equal(1997)
    expect(titanic.imdbranking).to eq(7.7)
    expect(titanic.tomatorating).to eq(8.0)
  end
end