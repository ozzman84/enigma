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

  it 'can return index values' do
    encrypt = Encrypt.new('hello')

    expect(encrypt.message_values).to eq(['h', 'e', 'l', 'l', 'o'])
  end
end
