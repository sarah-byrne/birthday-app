require './app'

feature 'entering details' do
  scenario 'enter name and see it returned' do
    fill_in_form
    expect(page).to have_content("Sarah")
  end
  scenario 'enter birthday and see it returned' do
    fill_in_form
    expect(page).to have_content("2 Mar")
  end
end
