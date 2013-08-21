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
  it "returns a word and eliminates 'del' from the word" do
    question_2 = del_del("abdelcd")
    expect(question_2).to be("abcd")
  end

  it "returns the same word if 'del' is not contained" do
    question_2 = del_del("xyz")
    expect(question_2).to be("xyz")
  end
end

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error

# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!

describe "question 4: a function called nearHundred" do
  it "returns true if range is within 10 numbers from 100" do
    question_4 = nearHundred(93)
    expect(question_4).to be(true)
  end

  it "returns false if range is outside 10 numbers from 100" do
    question_4 = nearHundred(52)
    expect(question_4).to be(false)
  end

  it "returns RuntimeError if it is not a number" do
    question_4 = nearHundred('two')
    expect(question_4).to raise_error(RuntimeError)
  end
end

# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"

describe "question 5: a function called back_around" do
  it "returns a string with last letter becoming first letter" do
    question_5 = back_around("cat")
    expect(question_5).to be("tca")
  end

  it "returns a string with last letter upfront" do
    question_5 = back_around("hello")
    expect(question_5).to be("ohell")
  end
end