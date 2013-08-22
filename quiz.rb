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
  day = Time.now.strftime("%A")
  if options[:vacation] || day == 'Saturday' || day == 'Sunday'
    return true
  else
    return false
  end
end

# Question 2: a function called del_del
#############
# Remove "del" from a string.
# del_del("abdelcd") => "abcd"
# del_del("xyz") => "xyz"
def del_del(word)
  return word.gsub("del", "")
end

# Question 3: a function called missing_char
#############
# Remove the character that corresponds to the index from the string.
# If you don't enter a string
# missing_char("kittie", 1) => "kttie"
# missing_char(347, 1) => RuntimeError: Please enter a string!
def missingChar(word, index)
  if (word.class != String)
    raise RuntimeError.new('Please enter a string!')
  end
  word.slice!(index)
  return word
end

# Question 4: a function called near_hundred
#############
# Write a function called near_hundred
# If the number is between 90 and 99, the result is true;
# If it is 89 or below, it is false.
# near_hundred(93) => true
# near_hundred(52) => false
# near_hundred('two') => RuntimeError: Please enter a number!
def nearHundred(num)
  if (num.class != Fixnum)
    raise RuntimeError.new('Please enter a number!')
  end
  if num >= 90 && num <= 99
    return true
  else
    return false
  end
end

# Question 5: a method called back_around
#############
# Given a string, move the last character to the beginning.
# "cat".back_around => "tca"
# "hello".back_around => "ohell"
def back_around(word)
  letter = word[word.length - 1, word.length - 1]
  return letter + word[0, word.length - 1]
end
