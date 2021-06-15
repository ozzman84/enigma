require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
require 'encrypt'
SimpleCov.start

RSpec.describe Encrypt do
  it 'exists' do
    encrypt = Encrypt.new('hello')

    expect(encrypt).to be_a(Encrypt)
  end

  it 'has readable attributes' do
    encrypt = Encrypt.new('hello')

    expect(encrypt.message).to eq('hello')
    expect(encrypt.char).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'can return the index position' do
    encrypt = Encrypt.new('hello')

    expect(encrypt.message_arr).to eq(['h', 'e', 'l', 'l', 'o'])
    expect(encrypt.index).to eq([7, 4, 11, 11, 14])

    encrypt2 = Encrypt.new('hello!')
  end

  it 'can returns the new index position' do
    encrypt = Encrypt.new('hello')
    shift_index = [10, 20, 0, 10]

    expect(encrypt.sum_index).to eq([17, 24, 11, 21, 24])
  end
end
