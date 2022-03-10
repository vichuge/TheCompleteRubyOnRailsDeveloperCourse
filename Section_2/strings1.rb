first_name = "Mashrur"
last_name = "Hossain"

# String concatenation
puts first_name + " " + last_name

# String interpolation
puts 'My first name is #{first_name} and my last name is #{last_name}'

# Methods, how to find them
"string".class # string
10.class # Integer
10.to_s.class # string

full_name = "#{first_name} #{last_name}"
full_name.length # 15
full_name.reverse # "niassoH rurhsaM"
full_name.capitalize # "Mashrur hossain"
full_name.empty? # false
"".empty? #true
"".nil? # false
nil.nil? # true

sentence = "Welcome to the jungle"
sentence.sub("the jungle", "utopia")
p sencente # "Welcome to utopia"

# Common methods 
first_name.methods # list for methods

# Variable assigment
new_first_name = first_name
p new_first_name # "Mashrur"
first_name = "Jhon"
p new_first_name # "Mashrur"

# Escaping
'the new first name is #{new_first_name}' # "the new first name is \#{new_first_name}" because we're using ' in place "
"the new first name is #{new_first_name}" # "the new first name is Mashrur"

'Mashrur asked 'Hey Jhon, how r u doing?'' # Error!
'Mashrur asked \'Hey Jhon, how r u doing?\'' # "Mashrur asked 'Hey Jhon, how r u doing?'" 