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

describe "Shelters show page", type: :feature do
  it "Can see the shelter's name, address, city, state, and zip code" do
    shelter1 = Shelter.create(name: "Pups For You", address: "1808 Pup lane", city: "Denver", state: "Colorado", zip: "80027")
    shelter2 = Shelter.create(name: "Kitty Rescue", address: "1505 Kitty Dr.", city: "Denver", state: "Colorado", zip: "80025")

    visit "shelters/#{shelter1.id}"

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter1.address)
    expect(page).to have_content(shelter1.city)
    expect(page).to have_content(shelter1.state)
    expect(page).to have_content(shelter1.zip)

    visit "shelters/#{shelter2.id}"

    expect(page).to have_content(shelter2.name)
    expect(page).to have_content(shelter2.address)
    expect(page).to have_content(shelter2.city)
    expect(page).to have_content(shelter2.state)
    expect(page).to have_content(shelter2.zip)
  end
end
