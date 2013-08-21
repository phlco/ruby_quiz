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
options = {
  vacation: false
}
def sleep_in?(options)
  weekend = ["saturday", "sunday"]
  weekedays = ["monday", "tuesday", "wednesday", "thursday", "friday"]

 if options[:vacation] == true
    return true
  else
    if weekend.include?(Time.now.strftime("%A"))
      return true
    else
      return false
    end
 end
end

# Question 2: a function called del_del
#############
# Remove "del" from a string.
# del_del("abdelcd") => "abcd"
# del_del("xyz") => "xyz"

phrase = "abdelcd"
def del_del(phrase)
  phrase.gsub("del", "")
end

# Question 3: a function called missingChar
#############
# Remove the character that corresponds to the index from the string.
# If you don't enter a string
# missing_char("kitten", 1) => "ktten"
# missing_char(347, 1) => RuntimeError: Please enter a string!

phrase = "hello"
number = 2

def missingChar(phrase, number)
  phrase.sub(phrase[number], "")
end

# Question 4: a function called nearHundred
#############
# Write a function called nearHundred
# If the number is between 90 and 99, the result is true;
# If it is 89 or below, it is false.
# 93.near_hundred? => true
# near_hundred(52) => false
# near_hundred('two') => RuntimeError: Please enter a number!

number = 99
def nearHundred(number)
  if number.between?(90, 110)
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

word = "lemon"
def back_around(word)
  letter = word[-1]
  letter_removed_word = word.sub(letter, "")
  return changed_word = "#{letter}" + letter_removed_word
end







