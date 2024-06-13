=begin 答えは出るが、一部のテストで時間がかかりすぎる
n, x = gets.chomp.split(" ").map(&:to_i)
array = gets.chomp.split(" ").map(&:to_i)
result = 0

(n - 1).times do |i|
  while (array[i] + array[i + 1]) > x do
    if array[i + 1] >= 1
      array[i + 1] = array[i + 1] - 1
      result += 1
    else
      array[i] = array[i] - 1
      result += 1
    end
  end
end
puts result
=end

n, x = gets.chomp.split(" ").map(&:to_i)
array = gets.chomp.split(" ").map(&:to_i)
result = 0

(n - 1).times do |i|
  sum = array[i] + array[i + 1]
  if sum > x 
    array[i + 1] -= sum - x
    result += sum - x
    if array[i + 1] < 0
      array[i + 1] = 0
    end
  end
end
puts result