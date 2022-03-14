class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  # attr_reader :username, :password
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

  # def first_name=(name)
  #  @first_name = name
  # end
  def to_s
    "First name: #{@first_name}\nLast name: #{@last_name}\nEmail: #{@email}\nUsername: #{@username}\nPassword: #{@password}"
  end
end

# mashrur = Student.new
# mashrur.first_name = 'Mashrur'
# mashrur.last_name = 'Hossain'
# p mashrur.to_s

mashrur = Student.new('Mashrur', 'Hossain', 'mashrur1', 'mashrur@mail.com', 'password')
puts mashrur