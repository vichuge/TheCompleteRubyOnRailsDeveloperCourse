users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'

counter = 0
while counter < 3
  puts 'Please, enter your username:'
  user = gets.chomp

  puts 'Validating your username...'

  user_exist = users.select { |u| u[:username] == user }

  if !user_exist.empty?
    puts 'Now your password pls'
    pass = gets.chomp
    if user_exist[0][:password] == pass
      puts user_exist
      break
    else
      puts 'Wrong password!'
      counter += 1
    end
  else
    puts 'Invalid username'
    counter += 1
  end
end

puts 'You have exceeded the number of attempts' if counter == 3
