n, x, y = gets.chomp.split(" ").map(&:to_i)

results = []

n.times do |i|
  results << []
  if (i + 1) % x == 0 && (i + 1) % y == 0
    results[i] << "AB"
  elsif (i + 1) % x == 0
    results[i] << "A"
  elsif (i + 1) % y == 0
    results[i] << "B"
  else
    results[i] << "N"
  end
end

results.each do |result|
  puts result
end