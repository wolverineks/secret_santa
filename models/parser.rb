require_relative 'secret_santa'
require 'csv'

class Parser
  attr_accessor :file, :secret_santas

  def initialize(file)
    @secret_santas = []
    secret_santas_file = file

    parse_secret_santas_from_file(file)
  end

private

  def parse_secret_santas_from_file(file)
    csv = CSV.readlines(file, :headers => true, :header_converters => :symbol)

    csv.each do |row|
      row = row.to_hash
      create_secret_santa(row)
    end
  end

  def create_secret_santa(details)
    secret_santas << SecretSanta.new(details)
  end
end
