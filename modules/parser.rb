require 'csv'

module Parser
  extend self

  def parse(klass, path)
    CSV.readlines(path, :headers => true, :header_converters => :symbol)
    .map do |row| klass.new(row.to_hash) end
  end
end
