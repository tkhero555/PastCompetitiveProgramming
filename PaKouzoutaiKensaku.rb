n = gets.chomp.to_i
user_datas = []
n.times do 
  user_datas << gets.chomp.split(" ")
end
k = gets.chomp

user_datas.each do |user_data|
  if user_data[1] == k
    puts user_data[0]
  end
end
