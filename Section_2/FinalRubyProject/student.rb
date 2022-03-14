require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name # Instance or class variable
  @last_name # Instance or class variable
  @email
  @username
  @password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email},
    Username: #{@username}, Password: #{@password}"
  end
end

mashrur = Student.new('Mashrur', 'Hossain', 'mashrur1', 'mashrur@example.com', 'password1')
john = Student.new('John', 'Doe', 'john1', 'john1@example.com', 'password2')

puts hashed_password = mashrur.create_hash_digest(mashrur.password)