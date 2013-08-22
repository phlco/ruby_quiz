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

describe "question 2: a function called del_del" do
  it "returns 'abcd' if the input was 'abdelcd'" do
    result = del_del('abdelcd')
    expect(result).to eq('abcd')
    # expect(result).to be('abcd')
  end

  it "returns 'xyz' if the input was 'xyz'" do
    result = del_del('xyz')
    # expect(result).to be('xyz')
    expect(result).to eq('xyz')
  end
end

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kittie", 1) => "kttie"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error

describe "question 3: a function called missingChar" do
  it "returns 'ktten' if the input was 'kitten' when index parameter was 1" do
    result = missingChar('kitten', 1)
    expect(result).to eq('ktten')
    # expect(result).to be('ktten')
  end

  it "returns raise RuntimeError if the input was a number" do
    # result = missingChar(347, 1)
    expect{missingChar(347, 1)}.to raise_error(RuntimeError, "Please enter a string!")
  end
end


# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!



# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"