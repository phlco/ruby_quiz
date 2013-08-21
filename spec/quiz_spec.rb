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

  it 'removes the sequence "del" from an input string' do 
    question_2 = del_del("abdelcd")
    expect(question_2).to eq('abc')
  end

  it 'does not remove anything from a string void of "del"' do 
    question_2 = del_del('xyz')
    expect(question_2).to eq('xyz')
  end

end 

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error

describe "question 3: a function called missingChar" do
  
  it 'should remove a letter from a string at the input index' do
    question_3 = missing_char('kitten', 1)
    expect(question_3).to eq('ktten')
  end

  it 'should error out if a non-string is input' do 
    expect{missing_char(3465, 1)}.to raise_error(RuntimeError)
  end

  it 'should only cut the letter at the index, not all of the same letter' do
    question_3 = missing_char('kickass', 5)
    expect(question_3).to eq('kickas') 
  end

end 


# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!

describe 'question 4: near_hundred should return true if number is > 89 and <100' do
  
  it 'should return true for 90->99' do 
    result = true
    number = 90
    while(result && number < 100)
      result = near_hundred(number)
      number+=1
    end
    expect(result).to eq(true)
  end

  it 'should return false if number is not in domain' do
    result = near_hundred(1000)
    expect(result).to eq(false)
  end

  it 'should raise an error if a number is not passed' do 
    expect{near_hundred('two')}.to raise_error('RuntimeError: Please enter a number!')
  end

end

# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"
describe 'question 5: it should move the last letter to the start' do

  it 'should move the last letter to the beginning of the word' do 
    result = back_around('hello')
    expect(result).to eq('ohell')
  end
  
  it 'should return single characters if single characters are input' do 
    result = back_around('h')
    expect(result).to eq('h')
  end
  
  it 'should error out if number is input' do
    expect{back_around(123).to raise_error('RuntimeError')}
  end

end