module MatchMaker
  extend self

  def make_matches(santas)
    santas.each_with_index do |santa, index|
      santa.gives_to = santas[index + 1] || santas[0]
    end

    santas.each do |santa|
      santa.gives_to.receives_from = santa
    end
  end
end
