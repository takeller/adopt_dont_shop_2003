require "rails_helper"

describe "Pet show page" do
  describe "When I visit 'pets/:id'" do
    it "Cans the pet with that id" do
      shelter1 = Shelter.create(name: "Puppies United")
      pet1 = Pet.create(image: "https://pixabay.com/get/54e7dd464a55a814f1dc8460da2932761d37d6e1555874_640.jpg", name: "Rosco", description: "Cute Puppy", approximate_age: "5", sex: "Male", adoption_status: "adoptable", shelter_id: shelter1.id)

      visit "pets/#{pet1.id}"

      find("img[src*='https://pixabay.com/get/54e7dd464a55a814f1dc8460da2932761d37d6e1555874_640.jpg']")
      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet1.description)
      expect(page).to have_content(pet1.approximate_age)
      expect(page).to have_content(pet1.sex)
      expect(page).to have_content(pet1.adoption_status)
    end
  end
end
