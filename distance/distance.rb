#require 'levenshtein'
#p Levenshtein.distance("cat", "dog") 

require 'rubygems'
require 'text'

a = "dog"
b = "cat"

puts Text::Levenshtein.distance(a, b)

