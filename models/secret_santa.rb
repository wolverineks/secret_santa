class SecretSanta
  attr_accessor :gives_to, :receives_from
  attr_reader :name, :phone

  def initialize(args)
    @name = args[:name]
    @phone = args[:phone]
    @gives_to
  end

  def gives_to?(santa)
    santa == gives_to
  end

  def receives_from?(santa)
    santa == receives_from
  end

end
