class Contact

  def initialize(name)
    @name = name
    @numbers = []
  end

  def add_number(new_number)
    @numbers << new_number
  end

  def name
    @name
  end

  def numbers
    @numbers
  end


end


