require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jasonMamoa = Actor.new("Jason Mamoa")
emiliaClarke = Actor.new("Emilia Clarke")
marvinMiller = Actor.new("Marvin Miller")
#puts jasonMamoa.name

drogo = Character.new("Khal Drogo", jasonMamoa)
danny = Character.new("Daenarys", emiliaClarke)
jmaman = Character.new("Aquaman", jasonMamoa)
mmaman = Character.new("Aquaman", marvinMiller)


got = Show.new("Game of Thrones")
aquaTv = Show.new("Aquaman")
aqua = Movie.new("Aquaman")

drogoGot = ShowCharacter.new(got, drogo)
danyGot = ShowCharacter.new(got, danny)
mmAquaTV = ShowCharacter.new(aquaTv, mmaman)
amanAqua = MovieCharacter.new(aqua, jmaman)

#puts drogoGot.character.name
#puts amanAqua.movie.name

#puts Actor.most_characters.name

puts Show.on_the_big_screen[0].name
