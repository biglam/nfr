# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# sample films
Movie.delete_all
# 60's
psycho = Movie.new(title: "Psycho")
psycho.get_data_from_omdb
psycho.save
thehustler = Movie.new(title: "the hustler")
thehustler.get_data_from_omdb
thehustler.save
westsidestory = Movie.new(title: "west side story")
westsidestory.get_data_from_omdb
westsidestory.save

# 70's
clockwork = Movie.new(title: "A Clockwork Orange")
clockwork.get_data_from_omdb
clockwork.save
godfather = Movie.new(title: "The Godfater")
godfather.get_data_from_omdb
godfather.save
jaws = Movie.new(title: "Jaws")
jaws.get_data_from_omdb
jaws.save

# 80's
thefly = Movie.new(title: "The Fly")
thefly.get_data_from_omdb
thefly.save
et = Movie.new(title: "et the extra terrestrial")
et.get_data_from_omdb
et.save
gloria = Movie.new(title: "gloria")
gloria.get_data_from_omdb
gloria.save

# 90's
pulpfiction = Movie.new(title: "Pulp Fiction")
pulpfiction.get_data_from_omdb
pulpfiction.save
schindler = Movie.new(title: "Schindlers List")
schindler.get_data_from_omdb
schindler.save
trainspotting = Movie.new(title: "Trainspotting")
trainspotting.get_data_from_omdb
trainspotting.save

# 00's

zoolander = Movie.new(title: "Zoolander")
zoolander.get_data_from_omdb
zoolander.save
thering = Movie.new(title: "The Ring")
thering.get_data_from_omdb
thering.save
darkknight = Movie.new(title: "The Dark Knight")
darkknight.get_data_from_omdb
darkknight.save

# 10's

dogtooth = Movie.new(title: "DogTooth")
dogtooth.get_data_from_omdb
dogtooth.save
actof = Movie.new(title: "The Act of Killing")
actof.get_data_from_omdb
actof.save
holymotors = Movie.new(title: "Holy Motors")
holymotors.get_data_from_omdb
holymotors.save