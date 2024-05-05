# 入力部分
n = 5
array = "TTTAA".split("")
# 回答部分
if n % 2 == 1
  wins = n/2+1
elsif n % 2 == 0
  wins = n/2
end
takahashi = 0
aoki = 0
result = ""
array.each do |a|
  if a == "T"
    takahashi += 1
  elsif a == "A"
    aoki += 1
  end
  if takahashi >= wins
    result = "T"
    break
  end
  if aoki >= wins
    result = "A"
    break
  end
end
puts result

