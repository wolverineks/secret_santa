Dir["models/*.rb"].each { |file| load(file) }
Dir["views/*.rb"].each { |file| load(file) }

parser = Parser.new("data/participants.csv")
secret_santas = parser.secret_santas

MatchMaker.make_matches(secret_santas.shuffle)

secret_santas.each do |santa|
  puts "-----------------------------------"
  puts santa.gives_to.gives_to != santa ? "PASS" : "FAIL"
end
puts "-----------------------------------"
