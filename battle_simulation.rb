n, l = gets.chomp.split(" ").map(&:to_i)
array = []
n.times do
  array << gets.to_i
end

array.each do |a|
  if a < l
    l = l + (a / 2)
  elsif a > l
    l = l / 2
  end
end

puts l