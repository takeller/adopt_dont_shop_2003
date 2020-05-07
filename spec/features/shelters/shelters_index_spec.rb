require 'rails_helper'

describe "Shelters index page", type: :feature do
  it "Can see a list of all shelters" do
    shelter1 = Shelter.create(name: "Pups For You")
    shelter2 = Shelter.create(name: "Kitty Rescue")

    visit "/shelters"

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter2.name)
  end

  it "Can See a link to create a new shelter: 'New Shelter'" do

    visit "/shelters"

    expect(page).to have_link("New Shelter", :href=> "/shelters/new")
  end
end