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
  shift.create_key

    expect(shift.create_key_hash).to eq(key_hash = {
      A: 02,
      B: 27,
      C: 71,
      D: 15
    })
  end

  it 'can create offset hash' do
  shift = Shift.new
  shift.create_date

    expect(shift.create_offsets_hash).to eq(offsets_hash = {
      A: 1,
      B: 0,
      C: 2,
      D: 5
    })
  end

  it 'can return shift hash' do
  shift = Shift.new
  shift.create_key
  shift.create_date
  shift.create_key_hash
  shift.create_offsets_hash

    expect(shift.create_shift_hash).to eq(shift_hash = {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    })
  end
end
