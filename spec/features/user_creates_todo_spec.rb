require "rails_helper"

feature "User creates todo", js: true do
  scenario "successfully" do
    visit root_path
    click_on "Add a new todo"

    task = "Buy milk"
    page.send_keys(task, :enter)

    expect(page).to have_css ".todos li", text: task
  end
end
