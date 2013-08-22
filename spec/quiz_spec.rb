# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb
# describe "question 1: a function called sleep_in?" do

#   it "returns true if the current day is Saturday or Sunday" do
#     # assuming you're answering this on a weekday!
#     expect(sleep_in?).to be(false)
#   end

#   it "takes an options hash as a parameter" do
#     parameters = method(:sleep_in?).parameters.first
#     expect(parameters).to include(:options)
#   end

#   it "returns true if vacation is true" do
#     question_1 = sleep_in?(vacation: true)
#     expect(question_1).to be(true)
#   end
# end

# Write the next tests yourself!
# See quiz.rb for more details

# Question 2: a function called del_del
  # Example Usage:
  # del_del("abdelcd") => "abcd"
  # del_del("xyz") => "xyz"
describe "question 2" do
  it "should delete del" do
    expect(del_del("abdelcd")).to eq "abcd"
  end

  it "should not delete anything else" do
    expect(del_del("xyz")).to eq "xyz"
  end
end

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kittie", 1) => "kttie"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error
describe "question 3" do
  it "should delete the character at the index" do
    expect(missing_char("kitten", 1)).to eq "ktten"
  end

  it "should require a string" do
    expect{missing_char(347, 1)}.to raise_error
  end
end

# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
describe "question 4" do
  it "should say 93 is near one hundred" do
    # ??????
    expect(nearHundred(93)).to be true
  end

  it "should say 52 is not near 100" do
    expect(nearHundred(52)).to be false
  end

  it "should raise an error for a non number" do
    expect{nearHundred('two')}.to raise_error(RuntimeError)
  end
end

# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"
describe "question 5" do
  it "should make cat into tca" do
    expect("cat".back_around).to eq "tca"
  end

  it "should make hello into ohell" do
    expect("hello".back_around).to eq "ohell"
  end
end
