require 'rails_helper'


RSpec.describe 'As a visitor' do
  describe "When I visit an admin shelter show page (admin/shelters/:id)" do
    before(:each) do
      @shelter_1 = create(:shelter)
      @shelter_2 = create(:shelter)
    end

    it "Then I see all Shelters in the system listed in reverse alphabetical order by name" do
        visit "/admin/shelters/#{@shelter_1.id}"

        expect(page).to have_content(@shelter_1.name)
        expect(page).to have_content(@shelter_1.address)
        expect(page).to have_content(@shelter_1.city)
        expect(page).to have_content(@shelter_1.state)
        expect(page).to have_content(@shelter_1.zip)
    end

    it "Then I see all Shelters in the system listed in reverse alphabetical order by name" do
        visit "/admin/shelters/#{@shelter_2.id}"

        expect(page).to have_content(@shelter_2.name)
        expect(page).to have_content(@shelter_2.address)
        expect(page).to have_content(@shelter_2.city)
        expect(page).to have_content(@shelter_2.state)
        expect(page).to have_content(@shelter_2.zip)
    end
  end
end


# Admin Shelters Show Page
#
# As a visitor
# When I visit an admin shelter show page
# Then I see that shelter's name and full address
#
# NOTE: Your query should only return the necessary data to complete the story
