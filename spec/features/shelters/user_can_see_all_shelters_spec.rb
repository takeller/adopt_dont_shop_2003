require 'rails_helper'

describe "Shelters index page", type: :feature do
  it "Can see a list of all shelter names" do
    shelter1 = Shelter.create(name: "Pups For You")
    shelter2 = Shelter.create(name: "Kitty Rescue")

    visit "/shelters"

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter2.name)
  end
end
