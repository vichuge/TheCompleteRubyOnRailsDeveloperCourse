a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p a
a.last # 9
a.first # 1

x = 1..100 # 1..100
x.class # Range
x.to_a # [1, 2, 3, ... 99, 100]
x.to_a.shuffle! # [rand1, rand2, ..., rand99, rand100] Shuffle all values on diff positions

x = (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
x.reverse # [10, 9, 8, ...]
x.reverse! # [10, 9, 8, ...] but now, the array remains reversed

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
a << 10 # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.last # 10
a.first # 1
a.unshift("Mashrur") # ["Mashrur", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.append("Mashrur") # ["Mashrur", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Mashrur"]
a.uniq # ["Mashrur", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] delete duplicates
a.uniq! # ["Mashrur", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] delete duplicates and save changes on variable
b = []
b.empty? # true
a.include?("Mashsrur") # true
a.include?("Hossain") # false
a.push("new item") # ["Mashrur", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "new item"]
b = a.pop "new item"
a # ["Mashrur", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.join # "Mashrur12345678910"
a.join("-") # "Mashrur-1-2-3-4-5-6-7-8-9-10"
a.join(", ") # Mashrur, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
b = a.join("-")
b.split(-) # ["Mashrur", "1", "2", ..., "9", "10"]
%w(my name is mashrur and this is great Ruby is amazing) # ["my", "name", "is", "mashrur", "and", "this", "is", "great", "Ruby", "is", "amazing"]
z = _ # ["my", "name", "is", "mashrur", "and", "this", "is", "great", "Ruby", "is", "amazing"] take the last element on memory
z[0] # "my"
z[1] # "name"
for i in z
  print "#{i} "
end # my name is mashrur... is amazing

z.each do |food|
  print "#{food} "
end # my name is mashrur... is amazing

z.each { |food| print "#{food} "} # my name is mashrur... is amazing
z.each { |food| print "#{food.capitalize} "} # My Name Is Mashrur... Is Amazing

z = (1..100).to_a.shuffle # to_a because at this point, class is Range
z.select { |number| number.odd?} # [79, 85,..., 1] only odd numbers

=begin
  Array, created by including elements within square brackets:

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

The index for an array starts with 0, so in the array above a[0] is 1

Some methods you can use on arrays:

arrayname.empty?

arrayname.include?(itemname)

arrayname.reverse

arrayname.reverse! # use ! at the end to change the original array

arrayname.shuffle

arrayname.push(30) # will append new element 30 to the end array

arrayname << 25 # << known as shovel operator will also append new element to the end of the array

arrayname.unshift("someelement") # will add element "some element" to the beginning of the array

arrayname.pop # will remove the last element of the array and return 1

arrayname.uniq # will remove all the duplicates and display (will not change the original array)

arrayname.uniq! # will remove all the duplicates in the original array

A range:

(0..25).to_a

will create an array with elements from value 0 to 25

(0..99).to_a.shuffle!

will create an array with elements from value 0 to 99 in random order

To loop through an array named y using the .each method and print out the value of each element:

y.each { |i| puts i }

In plain terms: For each element i in array y print the value of i

To execute iteration through an array called names using a block:

names.each do |randomvariablename| # starts the do block

puts "Hello #{randomvariablename}" # executes code for each element

end # ends the do block

To capitalize (or use another method) on each element of array called names:

names.each { |randomvariablename| puts "Hello #{randomvariablename.capitalize}" }

Using the select method to pickup all the odd numbers from an array y:

y.select { |number| number.odd? } # selects the value and returns it only if the condition is met

To join the elements of an array named p:

p.join

To join the elements of an array with space in between each element:

p.join(" ")

To join the elements of an array with dash in between each element:

p.join("-")
end