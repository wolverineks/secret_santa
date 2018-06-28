module ListView
  extend self

  def render(row, list)
    puts "-----------------------"
    list.each do |santa|
      row.render(santa)
      puts "-----------------------"
    end
  end
end
