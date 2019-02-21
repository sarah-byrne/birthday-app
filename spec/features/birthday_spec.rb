require './app'

feature 'birthday or not' do
  scenario "it is the person's birthday" do
    fill_in_form
    expect(page).to have_content("Happy birthday")
  end
  scenario "it is not the person's birthday" do
    fill_in_form
    expect(page).to have_content("Your birthday will be in")
  end
end
