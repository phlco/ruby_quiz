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

  it "removes 'del' from a string" do
    expect(del_del("abdelcd")).to eq("abcd")
  end

  it "does not affect strings that do not have 'del'" do
    expect(del_del("xyz")).to eq("xyz")
  end

end

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error

describe "question 3: a function called missingChar" do

  it "removes the character that corresponds to the index of the string" do
    expect(missingChar("kitten", 1)).to eq("ktten")
  end

  it "returns a RuntimeError if a string is not entered" do
    expect{missingChar(347, 1)}.to raise_error(RuntimeError, "Please enter a string!")
  end

end

# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!

describe "question 4: a function called nearHundred" do

  it "returns true if the number is between 90 and 99" do
    expect(near_hundred(93)).to be(true)
  end

  it "returns false if the number is below 90" do
    expect(near_hundred(52)).to be(false)
  end

  it "raises an error something other than a number is passed" do
    expect{near_hundred('two')}.to raise_error(RuntimeError, "Please enter a number!")
  end

end

# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"

describe "question 5: a method called back_around" do

  it "moves the last character to the beginning" do
    expect("cat".back_around).to eq("tca")
    expect("hello".back_around).to eq("ohell")
  end
end