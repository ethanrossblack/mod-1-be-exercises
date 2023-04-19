require 'rspec'
require '../lib/hobbit'

RSpec.describe Hobbit do
  it 'has a name' do
    hobbit = Hobbit.new('Bilbo')
    expect(hobbit.name).to eq('Bilbo')
  end

  it 'can have another name' do
    hobbit = Hobbit.new('Peregrin')
    expect(hobbit.name).to eq('Peregrin')
  end

  it 'has an unadventurous disposition' do
    hobbit = Hobbit.new('Samwise')
    expect(hobbit.disposition).to eq('homebody')
  end

  it 'can have a different disposition' do
    hobbit = Hobbit.new('Frodo', 'adventurous')
    expect(hobbit.disposition).to eq('adventurous')
  end

  it 'can grow older when celebrating birthdays' do
    hobbit = Hobbit.new('Meriadoc')
    expect(hobbit.age).to eq(0)

    5.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.age).to eq(5)
  end

  it 'is considered a child at 32' do
    hobbit = Hobbit.new('Gerontius')

    32.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be false
  end

  it 'comes of age at 33' do
    hobbit = Hobbit.new('Otho')

    33.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be true

    # still an adult one year later
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to be true
  end

  it 'is old at the age of 101' do
    # create a hobbit
    # have hobbit age 101 years
    # check that hobbit.old? returns true

    hobbit = Hobbit.new('Otho')

    100.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be true
    expect(hobbit.old?).to be false

    # still old one year later
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to be true
    expect(hobbit.old?).to be true

    # still old at 102
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to be true
    expect(hobbit.old?).to be true
  end

  it 'it has the ring if its name is Frodo' do
    # create a hobbit named Frodo
    # create a second hobbit named Sam
    # check that .has_ring? for Frodo returns true
    # check that .has_ring? for Sam returns false
    
    hobbit1 = Hobbit.new('Frodo')
    hobbit2 = Hobbit.new("Sam")

    expect(hobbit1.has_ring?).to eq(true)
    expect(hobbit2.has_ring?).to eq(false)


  end

  it 'they are short' do
    # create a hobbit
    # check that is_short? returns true
    hobbit = Hobbit.new("Ethan!")
    expect(hobbit.is_short?).to eq(true)
  end
end
