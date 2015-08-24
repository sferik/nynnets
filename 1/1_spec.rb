require 'rspec'
require_relative '1'

describe 'give_it_back' do
  it 'returns whatever you pass into it' do
    expect(give_it_back(2)).to eq(2)
    expect(give_it_back("nynne")).to eq("nynne")
    expect(give_it_back([1, 2])).to eq([1, 2])
  end
end

describe 'yell_it' do
  it 'converts the text to all caps' do
    expect(yell_it("hello")).to eq("HELLO")
    expect(yell_it("goodbye")).to eq("GOODBYE")
  end
end

describe 'scream_it' do
  it 'converts the text to all caps and adds an exclamation point' do
    expect(scream_it("hello")).to eq("HELLO!")
    expect(scream_it("goodbye")).to eq("GOODBYE!")
  end
end

describe 'big_hello' do
  it 'it says hello in all caps' do
    expect(big_hello("nynne")).to eq("HELLO NYNNE")
    expect(big_hello("erik")).to eq("HELLO ERIK")
  end
end

describe 'biggest' do
  it 'returns the biggest element in an array' do
    expect(biggest([1, 2, 3])).to eq(3)
    expect(biggest([4, 3, 2])).to eq(4)
    expect(biggest(['a', 'b'])).to eq('b')
  end
end

describe 'second' do
  it 'returns the second element of an array' do
    expect(second(['a', 'b', 'c'])).to eq('b')
    expect(second(['a'])).to be nil
  end
end

describe 'rest' do
  it 'returns everything except the first element of an array' do
    expect(rest(['a', 'b', 'c'])).to eq(['b', 'c'])
    expect(rest(['a'])).to be_empty
  end
end

describe 'reverse_integer' do
  it 'reverses a number' do
    expect(reverse_integer(12)).to eq(21)
    expect(reverse_integer(102)).to eq(201)
    expect(reverse_integer(400)).to eq(4)
  end
end
