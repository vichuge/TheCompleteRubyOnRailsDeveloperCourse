sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
another_hash = { a: 1, b: 2, c: 3 } # Symbols are faster than strings
# A symbol is a way to refer to a variable without using quotes
# A symbol is a identity
another_hash[:a] # 1
another_hash['a'] # nil
sample_hash.keys # ['a', 'b', 'c']

sample_hash.each do |key, value|
  puts "The class or key is #{key} and the value is #{value}"
  # puts "The class or key is #{key.class} and the value is #{value.class}"
end

my_details = { name: 'Mashrur', favcolor: 'red' }
myhash = { a: 1, b: 2, c: 3, d: 4 }
myhash[:e] = 'Mashrur' # "Mashrur"
myhash[:c] = 'Ruby' # "Ruby"
myhash # {:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"Mashrur"}

myhash.select { |_k, v| v.is_a?(String) } # {:c=>"Ruby", :e=>"Mashrur"}
myhash.each { |k, v| myhash.delete(k) if v.is_a?(String) } # {:a=>1, :b=>2, :d=>4}
