# こいつで正解

h, w = gets.chomp.split(" ").map(&:to_i)
array = []
h.times do 
    array << gets.chomp.chars
end

result = 0

(1..h - 2).each do |i|
  (1..w - 2).each do |j|
    if array[i][j] == "." &&
       array[i-1][j-1] == "#" &&
       array[i-1][j] == "#" &&
       array[i-1][j+1] == "#" &&
       array[i][j-1] == "#" &&
       array[i][j+1] == "#" &&
       array[i+1][j-1] == "#" &&
       array[i+1][j] == "#" &&
       array[i+1][j+1] == "#"
      result += 1
    end
  end
end

puts result