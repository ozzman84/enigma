require 'shifts'
require 'simplecov'
SimpleCov.start

RSpec.describe Shift do
  it 'exists' do
    shift = Shift.new

    expect(shift).to be_a(Shift)
  end

  it 'has readable attributes' do
    shift = Shift.new
    shift.create_key
    shift.create_date

    expect(shift.key.length).to eq(5)
    expect(shift.date).to eq('140621')
  end

  it 'can return key hash' do
  shift = Shift.new
  key = '02715'

  expect(shift.create_key_hash(key)).to eq(key_hash = {
    A: 02,
    B: 27,
    C: 71,
    D: 15
  } )
  # expect(shift.date).to eq('140621')
  end
end
