10 == 9 # false
10 == 10 # true
10 == '10'.to_i # true
10 == '10'.to_f # true
10 != 9 # true
'hello' != 'bye' # true
'hello' != 'hello' # false
'hello' == 'hello' # true

100 > 99 # true
100 >= 100 # true
100 >= 101 # false
100 <= 101 # true

10 == '10'.to_f # true
10 == 10.0 # true
10 === 10.0 # true
10.eql?(10.0) # false, because types (int and float) are diff
