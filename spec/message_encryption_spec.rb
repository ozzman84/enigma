require 'shifts'
require 'simplecov'
require 'enigma'
require 'message_encription'
SimpleCov.start

RSpec.describe Encrypt do
  it 'exists' do
    encrypt = Encrypt.new('Hello')

    expect(encrypt).to be_a(Encrypt)
  end

  it 'has readable attributes' do
    encrypt = Encrypt.new('Hello')

    expect(encrypt.message).to eq('Hello')
    expect(encrypt.char).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'can return the index position' do
    encrypt = Encrypt.new('Hello')

    expect(encrypt.message_encription).to eq(['h', 'e', 'l', 'l', 'o'])
    expect(encrypt.index).to eq([7, 4, 11, 11, 14])
  end

  it 'encodes message' do
    encrypt = Encrypt.new('Hello')
    shift_index = [10, 20, 0, 10]

    expect(encrypt.encrypt).to eq(["r", "y", "l", "v", "y"])
  end
end
