module SantaView
  extend self

  def render(santa)
    puts "#{santa.name} gives to #{santa.gives_to.name}"
    puts "#{santa.name} receives from #{santa.receives_from.name}"
  end
end
