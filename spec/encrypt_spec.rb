require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
require 'encrypt'
SimpleCov.start

RSpec.describe Encrypt do
  it 'exists' do
    encrypt = Encrypt.new('Hello World')

    expect(encrypt).to be_a(Encrypt)
  end

  it 'has readable attributes' do
    encrypt = Encrypt.new('Hello World')

    expect(encrypt.message).to eq('Hello World')
    expect(encrypt.char).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'can return the index position' do
    encrypt = Encrypt.new('Hello World')

    expect(encrypt.message_arr).to eq(['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd'])
    expect(encrypt.index).to eq([7, 4, 11, 11, 14, 26, 22, 14, 17, 11, 3])
  end

  it 'encodes message' do
    encrypt = Encrypt.new('Hello World')
    shift_index = [10, 20, 0, 10]

    expect(encrypt.sum_index).to eq(["r", "y", "l", "v", "y", nil, "w", "y", nil, nil, "d"])
  end
end
