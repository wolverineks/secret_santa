Dir["models/*.rb"].each { |file| load(file) }

parser = Parser.new("data/participants.csv")
secret_santas = parser.secret_santas

MatchMaker.make_matches(secret_santas.shuffle)

secret_santas.each do |santa|
  puts "-----------------------"
  puts "#{santa.name} gives to #{santa.gives_to.name}"
  puts "#{santa.gives_to.name} gives to #{santa.gives_to.gives_to.name}"
end
puts "-------------------------"
