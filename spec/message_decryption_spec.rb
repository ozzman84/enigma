require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
require 'message_decryption'
SimpleCov.start

RSpec.describe Decryption do
  it 'exists' do
    decryption = Decryption.new

    expect(decryption).to be_a(Decryption)
  end
end
