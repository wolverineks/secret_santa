Dir["models/*.rb"].each { |file| load(file) }

participants = {
  "Alice": 1111111111,
  "Bob": 2222222222,
  "Charlie": 3333333333,
  "Donna": 4444444444,
  "Eric": 5555555555,
  "Frank": 6666666666,
  "Grace": 7777777777,
  "Harry": 8888888888,
  "Irene": 9999999999
}

secret_santas = participants.map do |participant|
  participant = {
    name: participant[0],
    phone: participant[1]
  }

  SecretSanta.new(participant)
end

MatchMaker.make_matches(secret_santas)

secret_santas.each do |santa|
  puts "-----------------------------------"
  puts santa.gives_to.gives_to != santa ? "PASS" : "FAIL"
end
puts "-----------------------------------"
