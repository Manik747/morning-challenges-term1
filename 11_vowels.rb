# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

<<<<<<< HEAD

def vowels(input_string)
  user_string=[]
  input_string.each {|char| user_string << char}
  vowels_arr = user_string.select{|vowel_string|vowel_string if ["a","e","i","o","u"].include?(vowel_string)}
  
end


get_string=gets.chomp.to_s.split(//)
puts vowels(get_string)
=======
def vowels (string)
  string.scan(/[aeiou]/i)
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
