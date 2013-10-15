# .___________. __    __   __       _______.    __       _______.        ___           ______      __    __   __   ________
# |           ||  |  |  | |  |     /       |   |  |     /       |       /   \         /  __  \    |  |  |  | |  | |       /
# `---|  |----`|  |__|  | |  |    |   (----`   |  |    |   (----`      /  ^  \       |  |  |  |   |  |  |  | |  | `---/  /
#     |  |     |   __   | |  |     \   \       |  |     \   \         /  /_\  \      |  |  |  |   |  |  |  | |  |    /  /
#     |  |     |  |  |  | |  | .----)   |      |  | .----)   |       /  _____  \     |  `--'  '--.|  `--'  | |  |   /  /----.__
#     |__|     |__|  |__| |__| |_______/       |__| |_______/       /__/     \__\     \_____\_____\\______/  |__|  /________(__)

# Question 1: a function called sleep_in?
#############
# Write a function called sleep_in?
# You can sleep in if it is not a weekday or if you are on vacation.
# sleep_in? => false
# sleep_in?(vacation: true) => true
def sleep_in?(options = {})
  return true if options[:vacation] == true
  current_date = Date.today
  current_date.wday == 0 || current_date.wday == 6
end

# Question 2: a function called del_del
#############
# Remove "del" from a string.
# del_del("abdelcd") => "abcd"
# del_del("xyz") => "xyz"
def del_del(string)
  if string.include?("del")
    string.slice! "del"
  end
  return string
end

# Question 3: a function called missingChar
#############
# Remove the character that corresponds to the index from the string.
# If you don't enter a string
# missing_char("kitten", 1) => "ktten"
# missing_char(347, 1) => RuntimeError: Please enter a string!
def missingChar(string, number)
  if string.class == String
    string[number] = ""
    return string
  else
    raise "Please enter a string!"
  end
end

# Question 4: a function called nearHundred
#############
# Write a function called nearHundred
# If the number is between 90 and 99, the result is true;
# If it is 89 or below, it is false.
# 93.near_hundred? => true
# near_hundred(52) => false
# near_hundred('two') => RuntimeError: Please enter a number!
def near_hundred(number)
  if (number.is_a? Integer)
    number.between?(90, 99)
  else
    raise "Please enter a number!"
  end
end

# Question 5: a method called back_around
#############
# Given a string, move the last character to the beginning.
# "cat".back_around => "tca"
# "hello".back_around => "ohell"

class String
  def back_around
    new_string = self[-1] + self[(0...-1)]
  end
end