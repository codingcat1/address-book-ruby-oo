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
  loop do
    puts "Press 'p' to enter phone number"
    puts "Press 'e' to enter email address"
    puts "Press 'a' to enter street address"
    puts "Press 'm' to return to the main menu"
    main_choice = gets.chomp
    if main_choice == 'p'
      add_phone
    elsif main_choice == 'e'
      add_email
    elsif main_choice == 'a'
      add_address
    elsif main_choice == 'm'
    break
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

