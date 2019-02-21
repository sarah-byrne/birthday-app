require './app'

feature 'entering details' do
  scenario 'enter name and see it returned' do
    visit('/')
    fill_in :name, with: "Sarah"
    click_button "Submit"
    expect(page).to have_content("Sarah")
  end
end
