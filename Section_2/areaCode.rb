dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  # Write code here
  somehash.each { |k, _v| puts k }
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  # Write code here
  somehash[key] if somehash.include?(key)
end

# Execution flow
loop do
  # Write your program execution code here
  puts 'Do you want to lookup an area code based on a city name?(Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts 'Which city do you want to lookup?'
  get_city_names(dial_book)
  city = gets.chomp.downcase
  code = get_area_code(dial_book, city)
  if code.nil?
    puts "I don't have an area code for #{city}"
  else
    puts "The area code for #{city} is #{dial_book[city]}"
  end
end
