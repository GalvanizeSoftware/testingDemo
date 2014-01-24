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

  it 'can be queried for the existing keys' do
    store = KeyValueStore.new
    store.add('student', 'gSchool')
    store.add('teacher', 'Mike')

    expect(store.keys).to eq ['student', 'teacher']
  end

  it 'can be cleared' do
    store = KeyValueStore.new
    store.add('student', 'gSchool')
    store.add('teacher', 'Mike')

    store.clear

    expect(store.keys).to eq []
    expect(store.get('student')).to be_nil
    expect(store.get('teacher')).to be_nil
  end
end
