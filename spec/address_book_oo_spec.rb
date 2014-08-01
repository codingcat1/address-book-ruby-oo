require 'rspec'
require 'address_book_contact'
require 'address_book_phone'
require 'address_book_email'

describe Contact do
  it 'initializes a new contact' do
    test_contact = Contact.new('Joe Doe')
    test_contact.numbers.should eq []
    test_contact.email.should eq []
    test_contact.address.should eq []
    test_contact.should be_an_instance_of Contact
  end

  it 'lets you read contact name' do
    test_contact = Contact.new('Joe Doe')
    test_contact.name.should eq 'Joe Doe'
  end

  it 'can add phone numbers to contact information' do
    test_contact = Contact.new('Joe Doe')
    test_number = Phone.new('503.555.1212')
    test_contact.add_number(test_number)
    test_contact.numbers.should eq [test_number]
  end

  # it 'can add emails to contact information' do
  # test_contact = Contact.net('Joe Doe')
  # test_email = Email.new('Jose@yahoo.com')
  # test_contact.add_email(test_email)
  # test_contact.emails.should eq [test_email]
  # end
end

describe Phone do
  it 'is initialized with a phone number' do
    test_number = Phone.new('503.555.1212')
    test_number.should be_an_instance_of Phone
  end

  it 'lets you read contact phone number' do
    test_number = Phone.new('503.555.1212')
    test_number.number.should eq '503.555.1212'
  end
end

describe Email do
  it 'is initialized with a email' do
    test_email = Email.new('Jose@yahoo.com')
    test_email.should be_an_instance_of Email
  end

  it 'lets you read contact email' do
    test_email = Email.new('Jose@yahoo.com')
    test_email.email.should eq 'Jose@yahoo.com'
  end
end

