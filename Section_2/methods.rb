def add(f, s)
  f + s
end

def rest(f, s)
  f - s
end

def multiply(first_num, second_num)
  first_num * second_num
end

def division(f, s)
  f / s.to_f
end

def mod(f, s)
  f % s
end

first_num = 20.5
second_num = 30
p add(first_num, second_num)
p rest(first_num, second_num)
p multiply(first_num, second_num)
p division(first_num, second_num)
p mod(first_num, second_num)
