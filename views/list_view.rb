module ListView
  extend self

  def self.render(list)
    puts "-----------------------"
    list.each do |santa|
      SantaView.render(santa)
      puts "-----------------------"
    end
  end

end
