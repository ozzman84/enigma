require 'shifts'
require 'simplecov'
require 'enigma'
require 'date'
SimpleCov.start

RSpec.describe Enigma do
  it "exists" do
    enigma = Enigma.new

    expect(enigma).to eq(Enigma)
  end
end
