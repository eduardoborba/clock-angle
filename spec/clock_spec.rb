require "spec_helper"

describe '#calculate_angle' do
  it 'returns the angle between the hours and minutes pointer' do
    clock = Clock.new(hours: 1, minutes: 30)
    expect(clock.calculate_angle).to eql(135.0)
  end

  it 'returns the lowest angle between the pointers' do
    clock = Clock.new(hours: 2, minutes: 55)
    expect(clock.calculate_angle).to eql(117.5)
  end

  it 'returns the angle between the pointers when hour is in 24hours format' do
    clock = Clock.new(hours: 15, minutes: 55)
    expect(clock.calculate_angle).to eql(147.5)
  end

  it 'considers minutes as 0 if not passed' do
    clock = Clock.new(hours: 9)
    expect(clock.calculate_angle).to eql(90.0)
  end
end