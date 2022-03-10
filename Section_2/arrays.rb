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