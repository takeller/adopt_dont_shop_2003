require "rails_helper"

describe "Shelters new page", type: :feature do
  it "Can see a form to create a new shelter" do

    visit "shelters"
    click_on "New Shelter"

    # current_path.should == "/shelters/new"
    # Ask how to test current path in project checkin
    # expect(current_path).to have_current_path("/shelters/new")

    expect(page).to have_field("Name")
    # expect(page).to have_field("Address")
    # expect(page).to have_field("City")
    # expect(page).to have_field("State")
    # expect(page).to have_field("Zip Code")

    fill_in "Name", with: "Pups For You"
    fill_in "Address", with: "1808 Pup lane"
    fill_in "City", with: "Louisville"
    fill_in "State", with: "Colorado"
    fill_in "Zip Code", with: "80027"
    click_on "Create Shelter"

    expect(page).to have_content("Pups For You")
  end


end
