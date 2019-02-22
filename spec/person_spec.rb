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
  it "knows if it is not its birthday" do
    allow(Date).to receive(:today).and_return Date.new(2019,11,18)
    sarah = Person.new("Sarah","Jan",1)
    expect(sarah.birthday?).to eq(false)
  end
  it "knows if it is its birthday" do
    allow(Date).to receive(:today).and_return Date.new(2019,11,18)
    sarah = Person.new("Sarah","Nov",18)
    expect(sarah.birthday?).to eq(true)
  end
  it "knows how many days until its birthday and hasn't had birthday this year" do
    allow(Date).to receive(:today).and_return Date.new(2019,3,1)
    sarah = Person.new("Sarah","Mar",10)
    expect(sarah.days_until_bday).to eq(9)
  end
  it "knows how many days until its birthday and has already had birthday this year" do
    allow(Date).to receive(:today).and_return Date.new(2019,3,1)
    sarah = Person.new("Sarah","Feb",28)
    expect(sarah.days_until_bday).to eq(364)
  end
end
