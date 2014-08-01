class Contact

  def initialize(name)
    @name = name
    @numbers = []
    @email = []
    @address = []

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

  def email
    @email
  end

  def address
    @address
  end

end


