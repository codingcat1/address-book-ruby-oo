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

  def name
    @name
  end

  def number
    @numbers
  end

  def email
    @emails
  end

  def address
    @addresses
  end

end


