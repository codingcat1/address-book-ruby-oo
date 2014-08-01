require 'rspec'
require 'address_book_contact'
require 'address_book_phone'

describe Contact do
  it 'is initialized with a contact name' do
    test_contact = Contact.new('Joe Doe')
    test_contact.should be_an_instance_of Contact
  end

  it 'lets you read contact name' do
    test_contact = Contact.new('Joe Doe')
    test_contact.name.should eq 'Joe Doe'
  end

  it 'starts out with an empty group of phone numbers' do
    test_contact = Contact.new('Joe Doe')
    test_contact.numbers.should eq []
  end

  it 'can add phone numbers to contact information' do
    test_contact = Contact.new('Joe Doe')
    test_number = Phone.new('503.555.1212')
    test_contact.add_number(test_number)
    test_contact.numbers.should eq [test_number]
  end
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
