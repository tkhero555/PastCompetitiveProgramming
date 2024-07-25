n = gets.chomp.to_i
user_datas = []
n.times do 
  user_datas << gets.chomp.split(" ")
end

user_datas.each do |user_data|
  puts "User{
nickname : #{user_data[0]}
old : #{user_data[1]}
birth : #{user_data[2]}
state : #{user_data[3]}
}"
end