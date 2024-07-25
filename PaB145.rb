# 二次元配列でビンゴカードを表現
# 抽選された数字は配列で管理
# カードの数字を一つずつ取り出すのをマス目の数だけ繰り返し
# 抽選された数字を取り出すして一致していれば穴が開く
# 中央の0は最初から空いているので、穴が開くのを0にする
# 穴あけが終わった後縦横、斜めを取り出して0かどうかをチェックして、ビンゴならresultに1を足す

n, k = gets.chomp.split(" ").map(&:to_i)
bingo_card = []
n.times do 
  bingo_card << gets.chomp.split(" ").map(&:to_i)
end
numbers = gets.chomp.split(" ").map(&:to_i)

result = 0

# 数字抽選処理
n.times do |i|
  n.times do |j|
    numbers.each do |num|
      if bingo_card[i][j] == num
        bingo_card[i][j] = 0
      end
    end
  end
end

p "ビンゴカード穴あけ後#{bingo_card}"

# ビンゴチェック
#横1列目のチェック
bingo_card.each do |line_nums|
  if line_nums.all? {|n| n == 0 }
    result += 1
    p "横列のビンゴチェックヒット#{line_nums}"
  end
end
#縦i列目のチェック
n.times do |i|
  line_check = 0
  n.times do |j|
    unless bingo_card[j][i] == 0
      break
      p "縦列チェックでブレイク#{i}#{j}"
    end
    line_check += 1
  end
  if line_check == n
    result += 1
    p "縦列ビンゴ#{i}"
  end
end

# 左上始点斜めのチェック
line_check = 0
n.times do |i|
  unless bingo_card[i][i] == 0
    p "左上始点斜めブレイク#{i}"
    break
  end
  line_check += 1
end
p "左上#{line_check}"
if line_check == n
  result += 1
  p "左上始点斜めビンゴ"
end

# 左下始点斜めのチェック
line_check = 0
n.times do |i|
  unless bingo_card[n - 1 - i][0 + i] == 0
    p "左下始点斜めブレイク#{i}"
    break
  end
  line_check += 1
end
p "左下#{line_check}"
if line_check == n
  result += 1
  p "左下始点斜めビンゴ"
end

puts result
