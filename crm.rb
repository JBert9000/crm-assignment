require_relative "contact"

class CRM

  # Contact.create(frist_name, last_name, email, note)

  def initialize

  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
    print_main_menu.each do |select|

    end
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

  def call_option

  end

  def add_new_contact

  end

  def modify_existing_contact

  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end


jeremy = Contact.create(
  first_name: "Jeremy",
  last_name:  "Soule",
  email:      "jsoule@hotmail.com",
  note:       "Composer for Elder Scrolls series"
)

andrew = Contact.create(
  first_name: "Andrew",
  last_name:  "Popaia",
  email:      "andrewp@hotmail.com",
  note:       "Guy I made up"
)

puts jeremy.inspect, andrew.inspect
