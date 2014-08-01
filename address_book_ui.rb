require './lib/address_book_contact'
require './lib/address_book_phone'
require './lib/address_book_email'
require './lib/address_book_address'

@contacts = []

def main_menu
  puts "**Address Book of Contacts**"

  loop do
    puts "Press 'c' to add contact."
    puts "Press 'v' to view contacts"
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'c'
      add_contact
    elsif main_choice == 'v'
      view_contacts
    elsif main_choice == 'x'
      puts "Kbye"
      exit
    end
  end
end

def add_contact
  puts "Enter contact name"
  input_contact = gets.chomp
  @contacts << Contact.new(input_contact)
end

def view_contacts
  puts "\n"
  puts "Your contact list:"
  @contacts.each_with_index do |contact, index|
    puts "#{index+1}. " + contact.name

  puts "\n"
  end
end

main_menu

