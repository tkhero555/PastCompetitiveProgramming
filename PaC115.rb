n, m = gets.chomp.split(" ").map(&:to_i)
array = []
(n - 1).times do
  array << gets.chomp.to_i
end

result = 0

array.each do |i|
  if i <= m
    result += i
  end
end

puts result