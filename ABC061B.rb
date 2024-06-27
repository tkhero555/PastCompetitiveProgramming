# aiとbiを二次元配列で受け取って、都市の数の数字を繰り返し処理して、その数字が含まれている配列の
# 要素数をカウントしてやればいいんでは？
# 二次元配列の要素を取り出して、一致していればカウント増やす繰り返し処理をする

n, m = gets.chomp.split(" ").map(&:to_i)
array = []
m.times do 
  array << gets.chomp.split(" ").map(&:to_i)
end

result = []

n.times do |i|
  result << array.count { |ar| ar.include?(i + 1) }
end

result.each do |num|
  puts num
end