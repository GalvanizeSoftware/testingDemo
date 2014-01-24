require './key_value_store'
require 'rspec/core'

describe KeyValueStore do
  it 'allows me to get a key and get it back' do
    store = KeyValueStore.new
    store.add('student', 'gSchool')

    expect(store.get('student')).to eq 'gSchool'
  end

  it 'allows for deletion of a key' do
    store = KeyValueStore.new
    store.add('student', 'gSchool')

    store.delete('student')
    expect(store.get('student')).to be_nil
  end
end
