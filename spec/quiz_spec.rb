# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb
describe "question 1: a function called sleep_in?" do

  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to be(false)
  end

  it "takes an options hash as a parameter" do
    parameters = method(:sleep_in?).parameters.first
    expect(parameters).to include(:options)
  end

  it "returns true if vacation is true" do
    question_1 = sleep_in?(vacation: true)
    expect(question_1).to be(true)
  end
end

# Write the next tests yourself!
# See quiz.rb for more details

# Question 2: a function called del_del
  # Example Usage:
  # del_del("abdelcd") => "abcd"
  # del_del("xyz") => "xyz"
describe "question 2: a function called del_del" do

  it "takes a string as a parameter" do
    expect(parameters).to include(:string)
  end

  it "returns a string without 'del'" do
    question_2a = del_del("abdelcd")
    expect(question_2a).to be("abcd")
    question_2b = del_del("xyz")
    expect(question_2b).to be("xyz")
  end
end

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error
describe "question 3: a function called missingChar" do
  it "takes in a string and integer parameter" do
    expect(parameters).to include(:string, :integer)
  end

  it "removes a character from a string" do
    question_3a = missing_char("kitten", 1)
    expect(question_3a).to be("ktten") # should it remove 'i'?
    question_3b = missing_char(347, 1)
    expect(question_3b).to be(false) # needs to return 'ERROR'
  end
end

# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
describe "question 4: a function called nearHundred" do
  it "evaluates if a number is near 100" do
    question_4a = 93.near_hundred
    expect(question_4a).to be(true)
    
    question_4b = near_hundred(52)
    expect(question_4b).to be(false)

    question_4c = near_hundred('two')
    expect(question_4c).to be(false) # needs to return 'ERROR'
  end
end

# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"
describe "question 5: a function called back_around" do
  it "removes a char from end of string and puts it at the beginning" do
    question_5a = "cat".back_around
    expect(question_5a).to be("tca")
    
    question_5b = "hello".back_around
    expect(question_5b).to be("elloh")
  end
end