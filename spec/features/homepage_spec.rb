require "spec_helper"

feature "hompage content" do
  scenario "homepage displays contacts" do
    visit "/"

    expect(page).to have_content "Contacts"
  end
end