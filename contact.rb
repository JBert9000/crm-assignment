class Contact

  @@contact = []
  @@id = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contact << new_contact
    return new_contact
  end

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email
    @email
  end

  def email=(email)
    @email = email
  end

  def note
    note
  end

  def note=(note)
    @note = note
  end

  # This method should return all of the existing contacts
  def self.all
    @@contact
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contact.each do
      if @@id == id
        return @@id
      else
        return "error"
      end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update
    if attribute == 'first_name'
      self.first_name = value
    elsif attribute == 'last_name'
      self.last_name = value
    elsif attribute == 'email'
      self.email = value
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)
    if attribute == "first_name"
      @@contacts.each do |person|
        if person.first_name == value
          return person
        end

    else attribute == "last_name"
      @@contacts.each do |person|
        if person.last_name == value
          return person
        end

    else attribute == "email"
      @@contacts.each do |person|
        if person.email == value
          return person
        end

    else attribute == "note"
      @@contacts.each do |person|
        if person.note == value
          return person
        end
    end

  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contact.delete
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.each do |person|
      if person == self
        @@contacts.delete(self)
      end
    end
  end

  # Feel free to add other methods here, if you need them.

end
