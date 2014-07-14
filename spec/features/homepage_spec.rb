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

feature "login" do
  scenario "user gets welcomed when they login" do
  visit "/"

  fill_in "Username", with: "Jeff"
  fill_in "Password", with: "jeff123"

  click_button "Sign In"

  expect(page).to have_content("Welcome, Jeff")
  end
end
