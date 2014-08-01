class Contact

  def initialize(name)
    @name = name
    @numbers = []
    @emails = []
    @addresses = []
  end

  def add_number(new_number)
    @numbers << new_number
  end

  def add_email(new_email)
    @emails << new_email
  end

  def add_address(new_address)
    @addresses << new_address
  end

  def name
    @name
  end

  def numbers
    @numbers
  end

  def emails
    @emails
  end

  def addresses
    @addresses
  end

end


