def fill_in_form
  visit('/')
  fill_in :name, with: "Sarah"
  fill_in :day, with: "2"
  fill_in :month, with: "Mar"
  click_button "Submit"
end
