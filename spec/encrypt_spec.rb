require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
require 'encrypt'
SimpleCov.start

RSpec.describe Encrypt do
  it 'exists' do
    encrypt = Encrypt.new

    expect(encrypt).to be_a(Encrypt)
  end
end
