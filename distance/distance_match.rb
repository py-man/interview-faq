require 'levenshtein'

input    = "cat"
shortest = -1

words_array = []
file        = open("dictionary")
file.each_line { |line| words_array << line.chomp.to_s }
file.close

words_array.each do |word|
  distance    = Levenshtein.distance("#{input}", "#{word}") 
  if distance == 0
    puts "#{word}(#{distance})		==> [Match]"
  else 
    puts "#{word}:#{distance}"
    closest = input
    shortest = distance
  end
end
