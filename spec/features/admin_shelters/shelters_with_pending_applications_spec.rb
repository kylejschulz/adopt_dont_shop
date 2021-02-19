require 'rails_helper'


RSpec.describe 'As a visitor' do
  describe "When I visit the admin shelter index ('/admin/shelters')" do
    before(:each) do
      @shelter_1 = create(:shelter, name: 'AAAAA')
      @shelter_2 = create(:shelter)
      @shelter_3 = create(:shelter)
      @pet_1 = create(:pet, shelter: @shelter_1)
      @pet_2 = create(:pet, shelter: @shelter_2)
      @pet_3 = create(:pet, shelter: @shelter_3)
      @application_1 = create(:application, status: 'pending')
      @application_2 = create(:application, status: 'pending')
      @application_3 = create(:application, status: 'pending')
      @application_4 = create(:application, status: 'pending')
      @application_5 = create(:application, status: 'approved')
      @application_6 = create(:application, status: 'rejected')
      @application_7 = create(:application)
      @application_8 = create(:application)
      @application_1.pets << @pet_1
      @application_2.pets << @pet_1
      @application_3.pets << @pet_2
      @application_4.pets << @pet_2
      @application_5.pets << @pet_1
      @application_6.pets << @pet_2
      @application_7.pets << @pet_3
      @application_8.pets << @pet_2
    end

    it "Then I see a section for 'Shelters with Pending Applications'" do
      visit "/admin/shelters"
      within("#pending") do
        # expect(page).to have_content(@shelter_1.name)
        # expect(page).to have_content(@shelter_2.name)
        # expect(page).to have_no_content(@shelter_3.name)
      end
    end
  end
end
