require_relative "contact"

class CRM < Contact

  def initialize(name)
    @name = name
  end

  def main_menu
    puts print_main_menu
    user_selected = gets.chomp.to_i
    puts user_selected
    #call_option(user_selected)
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    user_selected = gets.chomp.to_i
    print_main_menu.each do |menu|
      if menu == 1
        add_new_contact
      elsif menu == 2
        modify_existing_contact
      elsif menu == 3
        delete_contact
      elsif menu == 4
        display_all_contacts
      elsif menu == 5
        search_by_attribute
      elsif menu >= 6
        abort
      end

    end
  end

  def add_new_contact #(first_name, last_name, email, note)
    puts 'Enter First Name: '
    first_name = gets.chomp

    puts 'Enter Last Name: '
    last_name = gets.chomp

    puts 'Enter Email Address: '
    email = gets.chomp

    puts 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "Enter an ID of a contact"
    inupt_id = gets.chomp.to_i

    puts "Would you like to change first_name, last_name, or email?"
   attribute = gets.chomp

   puts "What is the new #{attribute}?"
   value = gets.chomp

   # a = Contact.find(input_id)
   # a.update(attribute, value)

   a = Contact.find(input_id)
   a.update(attribute => value)
  end

  def delete_contact
    puts "Enter ID of contact"
    input_id = gets.chomp.to_i

    a = Contact.find(input_id)
    a.delete
  end

  def display_all_contacts
    Contact.all.each do |user|
      puts "#{user.id}   #{user.first_name}   #{user.last_name}   #{user.email}   #{user.note}"
    end
  end

  def search_by_attribute
    puts "Would you like to find contact by first_name, last_name, or email?"
    attribute = gets.chomp

    puts "What is the #{attribute} of the contact you are looking for?"
    value = gets.chomp

    a = Contact.find_by(attribute, value)
    puts "#{a.id} #{a.first_name} #{a.last_name} #{a.email}"
  end


end

menu1 = CRM.new

puts menu1.print_main_menu
