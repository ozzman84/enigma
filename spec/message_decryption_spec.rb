require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
require 'message_decryption'
SimpleCov.start

RSpec.describe Decryption do
  it 'exists' do
    decryption = Decryption.new(["r", "y", "l", "v", "y"])

    expect(decryption).to be_a(Decryption)
  end

  it 'has readable attributes' do
    decryption = Decryption.new(["r", "y", "l", "v", "y"])

    expect(decryption.encrypted_message).to eq(["r", "y", "l", "v", "y"])
    expect(encrypt.char).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end
end
