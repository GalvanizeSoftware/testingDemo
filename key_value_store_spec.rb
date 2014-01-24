require './key_value_store'
require 'rspec/core'

describe KeyValueStore do
  it 'allows me to get a key and get it back' do
    store = KeyValueStore.new
    store.add('student', 'gSchool')

    expect(store.get('student')).to eq 'gSchool'
  end
end
