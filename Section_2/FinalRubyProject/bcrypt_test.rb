require 'bcrypt'

my_password = BCrypt::Password.create('my password')
puts my_password
#=> "$2a$12$bT1To0dNiBNpcnPIGymtkuCcokiZRkJ6/Gz5uSfrofJ8lsSzl7MXq"

puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 10
puts my_password == 'my password'     #=> true
puts my_password == 'not my password' #=> false

my_password = BCrypt::Password.new("$2a$12$dzrbNn6q8hZ5TLcX6HRrguyqI8Y41m0IwbhBRqrsiRCGzdoln1eUa")
puts my_password == "my password" #=> true

my_password1 = BCrypt::Password.create('my password')
my_password2 = BCrypt::Password.create('my password')

puts my_password1 == 'my password' #=> true
puts my_password2 == 'my password' #=> true
puts my_password1 == my_password2  #=> false