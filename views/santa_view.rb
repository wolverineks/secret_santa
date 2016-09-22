module SantaView
  extend self

  def render(santa)
    puts "#{santa.name} gives to #{santa.gives_to.name}"
    puts "#{santa.gives_to.name} gives to #{santa.gives_to.gives_to.name}"
  end

end
