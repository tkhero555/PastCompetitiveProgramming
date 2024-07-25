# 入力文字列をカウントして同じ数の+を入れる　文字列の前後に式展開で+をつけたやつを入れる、+を入れる
# これを配列でやる
# やっぱそのままputsしちゃえ

str = gets.chomp
frame_number = str.size + 2

puts "+" * frame_number
puts "+#{str}+"
puts "+" * frame_number