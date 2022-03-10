# frozen_string_literal: true

10 / 4 # 2 WRONG
10.0 / 4 # 2.5
10.to_f / 4 # 2.5
10 / 4.0 # 2.5
10 / 4.to_f # 2.5
(10 / 4).to_f # 2.0 WRONG

x = 5
y = 10

puts y / x # 2

'5' * '5' # Error!
'5' * 2 # "55" this because is an string 2 times
5 * 2 # 10
puts '-' * 20 # --------------------
20.times { print '-' } # --------------------
20.times { puts 'hi' } # hi 20 times one for each line
20.times { puts rand(10) }

rand # random number between 0 and 1
rand(10) # random number between 0 and 9

x = '5'.to_i # 5
x.to_f # 5.0
y = '10'.to_f # 10.0
x * y # 50.0
'hello'.to_i # 0
'hello'.to_f # 0.0
x = 'hello'
x.to_i # 0

10 % 3 # 1, because is the rest on the division