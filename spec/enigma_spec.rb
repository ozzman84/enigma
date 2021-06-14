require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
SimpleCov.start

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new

    expect(enigma).to be_a(Enigma)
  end

  it 'can encrypt' do
    enigma = Enigma.new
    enigma.encrypt("hello world", "02715", "040895")

    expect(enigma.encrypt).to eq({
      encryption: "keder ohulw",
      key:        "02715",
      date:       "040895"
    })
  end
end
