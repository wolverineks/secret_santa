module MatchMaker
  extend self

  def make_matches(santas)
    santas.each_with_index do |santa, index|
      giver = santa
      receiver = santas[index + 1] || santas[0]

      giver.gives_to = receiver
      receiver.receives_from = giver
    end
  end
end
