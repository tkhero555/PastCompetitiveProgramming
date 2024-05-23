names = gets.chomp.split(" ")
result = ""
names.each {|name| result << name[0]}
puts result