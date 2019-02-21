require './lib/person'

describe Person do
  it 'has a name' do
    sarah = Person.new("Sarah","Jan",1)
    expect(sarah.name).to eq("Sarah")
  end
  it 'has a birth month' do
    sarah = Person.new("Sarah","Jan",1)
    expect(sarah.birth_month).to eq("Jan")
  end
  it 'has a birth day' do
    sarah = Person.new("Sarah","Jan",1)
    expect(sarah.birth_day).to eq(1)
  end
end
