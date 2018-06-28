Dir["models/*.rb"].each do |file| load(file) end
Dir["modules/*.rb"].each do |file| load(file) end

santas = [Parser.parse(SecretSanta, "data/participants.csv")]
.map do |array| array.shuffle end
.map do |shuffled| MatchMaker.make_matches(shuffled) end

result = santas.map do |santas|
  santas.map do |santa|
    santa.gives_to.gives_to != santa ? "PASS" : "FAIL"
  end
end

puts "-----------------------------------"
puts "santa.gives_to.gives_to != santa"
puts "-----------------------------------"
puts result
puts "-----------------------------------"
