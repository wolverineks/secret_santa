Dir["models/*.rb"].each do |file| load(file) end
Dir["modules/*.rb"].each do |file| load(file) end
Dir["views/*.rb"].each do |file| load(file) end

santa_list = [Parser.parse(SecretSanta, "data/participants.csv")]
.map do |array| array.shuffle end
.map do |shuffled| MatchMaker.make_matches(shuffled) end

santa_list.map do |santas|
  ListView.render(SantaView, santas)
end
