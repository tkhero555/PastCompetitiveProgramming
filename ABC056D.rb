# 正答率14/51で全然できていないがギブアップ　模範解答は非常に数学的発想が使われていた。

n, k = gets.chomp.split(" ").map(&:to_i)
array = gets.chomp.split(" ").map(&:to_i)

combinations = []
n.times do |i|
  array.combination(i+1) { |n| combinations << n }
end
good_combinations = []
combinations.each do |combs| 
  if combs.sum >= k
    good_combinations << combs
  end
end

if good_combinations.empty?
  result = n
else
  result = 0
end

array.each do |a|
  good_combinations.each do |good_comb|
    if good_comb.include?(a)
      check_comb = good_comb
      check_comb.delete(a)
      if check_comb.sum >= k
        result += 1
      end
    end
  end
end 

puts result