require './app'

feature 'birthday or not' do
  scenario "it is the person's birthday" do
    allow(Date).to receive(:today).and_return Date.new(2019,3,2)
    fill_in_form
    expect(page).to have_content("Happy birthday")
  end
  scenario "it is the person's birthday in 1 day" do
    allow(Date).to receive(:today).and_return Date.new(2019,3,1)
    fill_in_form
    expect(page).to have_content("Your birthday will be in 1 day")
  end
  scenario "it is the person's birthday in 2 days" do
    allow(Date).to receive(:today).and_return Date.new(2019,2,28)
    fill_in_form
    expect(page).to have_content("Your birthday will be in 2 days")
  end
end
