require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe "When I visit a '/pets' index page'" do
    before(:each) do
      @application = create(:application)
      @pet = create(:pet)
    end
    it "Then I see a link to 'Start an Application'" do
      visit "/pets"

      expect(current_path).to eq("/pets")
      expect(page).to have_link("Start an Application")
    end

    it "When I click this link" do
      visit "/pets"

      expect(current_path).to eq("/pets")
      expect(page).to have_link("Start an Application")
      click_link("Start an Application")
      expect(current_path).to eq("/applications/new")
    end

    it "When I fill in this form with my:" do
      visit "/pets"

      expect(current_path).to eq("/pets")
      expect(page).to have_link("Start an Application")
      click_link("Start an Application")
      expect(current_path).to eq("/applications/new")

      fill_in "name", :with => "Shrewsbury Heights"
      fill_in "address", :with => "123 fake st."
      fill_in "description", :with => "I'd be a good dog dad because i love dogs!!"
      click_button("Submit")
    end
  end
end
