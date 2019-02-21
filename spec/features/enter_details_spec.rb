require './app'

feature 'entering details' do
  scenario 'enter name and see it returned' do
    visit('/')
    fill_in :name, with: "Sarah"
    click_button "Submit"
    expect(page).to have_content("Sarah")
  end
  scenario 'enter birthday and see it returned' do
    visit('/')
    fill_in :name, with: "Sarah"
    fill_in :day, with: 2
    fill_in :month, with: "Mar"
    click_button "Submit"
    expect(page).to have_content("2 Mar")
  end
end
