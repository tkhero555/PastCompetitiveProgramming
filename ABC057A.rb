a, b = gets.chomp.split(" ").map(&:to_i)
result = a + b
if result >= 24
  puts result - 24
else
  puts result
end