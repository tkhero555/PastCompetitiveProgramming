n = 4
array = [2, 5, 1, 2]
answer = []
(n-1).times do |number|
  answer << array[number]
  if array[number] < array[number+1]
    (array[number]+1).upto(array[number+1]-1) do |j|
      answer << j
    end
  else
    (array[number]-1).downto(array[number+1]+1) do |j|
      answer << j
    end
  end
end
answer << array[-1]
puts answer.join(" ")