# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb

#unknowingly i actually wrote the test in javascript first, confusing the two!
#instead of expect().to eq 1, I wrote expect().toEqual (1).
describe "question 1: a function called sleep_in?" do

  it "should show 1 = 1" do
    expect(1).to eq(1)
  end

  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to eq(false)
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

describe " Question 2: a function called del_del" do
  it "deletes del from any string" do
  expect(del_del("abdelcd")).to eq("abcd")
  end
end



describe "Question 3: a function called missingChar" do
  it "takes a string and then removes the character index of the string" do

  expect(missing_char("kitten", 1)).to eq("ktten")
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error
  end
end

describe "Question 4: a function called nearHundred" do
  it "tells the user if the number selected is near 100" do
  expect(93.near_hundred?).to be(true)
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
  end
end

describe "Question 5: a method called back_around" do
  it "shuffles the given word" do
  expect("cat".back_around).to eq("tca")
  # "hello".back_around => "ohell"
  end
end