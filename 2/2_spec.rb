require 'rspec'
require_relative '2'

describe 'triple' do
  it 'multiplies whatever you pass into it times 3' do
    expect(triple(0)).to eq(0)
    expect(triple(1)).to eq(3)
    expect(triple(2)).to eq(6)
    expect(triple(3)).to eq(9)
  end
end

describe 'echo' do
  it 'repeats whatever you pass into it 3 times' do
    expect(echo('nynne')).to eq('nynnenynnenynne')
    expect(echo('erik')).to eq('erikerikerik')
  end
end

describe 'join_words' do
  it 'returns the 2 words passed in' do
    expect(join_words('erik', 'nynne')).to eq('erik nynne')
    expect(join_words('hello', 'goodbye')).to eq('hello goodbye')
  end
end

describe 'swap_words' do
  it 'returns the 2 words passed in, swapping the order' do
    expect(swap_words('erik', 'nynne')).to eq('nynne erik')
    expect(swap_words('hello', 'goodbye')).to eq('goodbye hello')
  end
end

describe 'echo_with_dash' do
  it 'repeats whatever you pass into it 3 times, separated by a dash' do
    expect(echo_with_dash('nynne')).to eq('nynne-nynne-nynne')
    expect(echo_with_dash('erik')).to eq('erik-erik-erik')
  end
end

describe 'echo_times' do
  it 'repeats whatever you pass into it the specified number of times' do
    expect(echo_times('nynne', 0)).to be_empty
    expect(echo_times('nynne', 1)).to eq('nynne')
    expect(echo_times('erik', 3)).to eq('erikerikerik')
  end
end

describe 'echo_with_dashes' do
  it 'repeats whatever you pass into it 3 times, with the specified number of dashes' do
    expect(echo_with_dashes('nynne', 0)).to eq('nynnenynnenynne')
    expect(echo_with_dashes('nynne', 1)).to eq('nynne-nynne-nynne')
    expect(echo_with_dashes('erik', 3)).to eq('erik---erik---erik')
  end
end

describe 'echo_times_with_dashes' do
  it 'repeats whatever you pass into it the specified number of times, with the specified number of dashes' do
    expect(echo_times_with_dashes('nynne', 0, 0)).to be_empty
    expect(echo_times_with_dashes('nynne', 0, 1)).to be_empty
    expect(echo_times_with_dashes('nynne', 1, 0)).to eq('nynne')
    expect(echo_times_with_dashes('nynne', 2, 0)).to eq('nynnenynne')
    expect(echo_times_with_dashes('nynne', 2, 1)).to eq('nynne-nynne')
    expect(echo_times_with_dashes('nynne', 2, 2)).to eq('nynne--nynne')
    expect(echo_times_with_dashes('nynne', 3, 1)).to eq('nynne-nynne-nynne')
    expect(echo_times_with_dashes('erik', 3, 3)).to eq('erik---erik---erik')
  end
end

describe 'echo_times_with_characters' do
  it 'repeats whatever you pass into it the specified number of times, with the specified number of the specified character' do
    expect(echo_times_with_characters('nynne', 0, '-', 0)).to be_empty
    expect(echo_times_with_characters('nynne', 0, '-', 1)).to be_empty
    expect(echo_times_with_characters('nynne', 1, '-', 0)).to eq('nynne')
    expect(echo_times_with_characters('nynne', 2, '-', 0)).to eq('nynnenynne')
    expect(echo_times_with_characters('nynne', 2, '-', 1)).to eq('nynne-nynne')
    expect(echo_times_with_characters('nynne', 2, '*', 2)).to eq('nynne**nynne')
    expect(echo_times_with_characters('nynne', 3, ' ', 1)).to eq('nynne nynne nynne')
    expect(echo_times_with_characters('erik', 3, '.', 3)).to eq('erik...erik...erik')
  end
end
