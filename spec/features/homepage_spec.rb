require "spec_helper"

feature "hompage content" do
  scenario "homepage displays contacts" do
    visit "/"

    expect(page).to have_content "Contacts"
  end
end

feature "login" do
  scenario "user can see login form on homescreen" do
    visit "/"

    expect(page).to have_content "Username"
    expect(page).to have_content "Password"
  end
end