# これだと上手くいかなかった　細かい条件を重ねている都合上見落としているパターンがあるっぽい
# remakeファイルの方で、繰り返し処理の部分を別アプローチでやり直してみる。

h, w = gets.chomp.split(" ").map(&:to_i)
array = []
h.times do 
    array << gets.chomp.split("")
end

result = 0

array.each_with_index do |second_array, f_index|
  second_array.each_with_index do |symbol, s_index|
    if symbol == "."
      if f_index == 0
        break
      end
      if f_index == h - 1
        break
      end
      if s_index == 0
        break
      end
      if s_index == w - 1
        break
      end
      if array[f_index - 1][s_index -1] == "."
        break
      end
      if array[f_index - 1][s_index] == "."
        break
      end
      if array[f_index - 1][s_index + 1] == "."
        break
      end
      if array[f_index][s_index - 1] == "."
        break
      end
      if array[f_index][s_index + 1] == "."
        break
      end
      if array[f_index + 1][s_index - 1] == "."
        break
      end
      if array[f_index + 1][s_index] == "."
        break
      end
      if array[f_index + 1][s_index + 1] == "."
        break
      end
      result += 1
    end
  end
end

puts result