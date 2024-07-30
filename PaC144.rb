n = gets.chomp.to_i
jankens = []
n.times do 
  jankens << gets.chomp.split(" ")
end

result = 0

jankens.each do |janken|
  if janken[0] == "G" && janken[1] == "C"
    result += 1
  elsif janken[0] == "C" && janken[1] == "P"
    result += 1
  elsif janken[0] == "P" && janken[1] == "G"
    result += 1
  end
end

puts result