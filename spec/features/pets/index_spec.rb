require "rails_helper"

describe "Pets Index Page" do
  describe "When I visit '/pets'" do
    it "Can see each pet in the system" do
      pet1 = Pet.create(image: "https://pixabay.com/get/54e7dd464a55a814f1dc8460da2932761d37d6e1555874_640.jpg", name: "Rosco", approximate_age: "5", sex: "Male", shelter: "Puppies United")
      pet2 = Pet.create(image: "https://pixabay.com/get/5ee0d44b4854b10ff3d89960c62d3f761d37dae25757_640.jpg", name: "Bob", approximate_age: "1", sex: "Male", shelter: "Pups R Us")

      visit "/pets"

      find("img[src*='https://pixabay.com/get/54e7dd464a55a814f1dc8460da2932761d37d6e1555874_640.jpg']")
      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet1.approximate_age)
      expect(page).to have_content(pet1.sex)
      expect(page).to have_content(pet1.shelter)

      find("img[src*='https://pixabay.com/get/5ee0d44b4854b10ff3d89960c62d3f761d37dae25757_640.jpg']")
      expect(page).to have_content(pet2.name)
      expect(page).to have_content(pet2.approximate_age)
      expect(page).to have_content(pet2.sex)
      expect(page).to have_content(pet2.shelter)
    end
  end
end
