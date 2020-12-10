require 'spec_helper'

describe '#xlen(key)' do
  before :all do
    sleep 1 - (Time.now.to_f % 1)
    @key = 'mock-redis-test:xlen'
  end

  before :each do
    @redises._gsub(/\d{3}-\d/, '...-.')
  end

  it 'returns the number of items in the stream' do
    expect(@redises.xlen(@key)).to eq 0
    @redises.xadd(@key, key: 'value')
    expect(@redises.xlen(@key)).to eq 1
    3.times { @redises.xadd(@key, key: 'value') }
    expect(@redises.xlen(@key)).to eq 4
  end
end
