w = "hthth"
array = w.split("")
result = ""
p array
array.each do |a|
  number = array.select { |a2| a2 == a }
  p number
  if number.count % 2 == 1
    result = "No"
    break
  end
  result = "Yes"
end
puts result
