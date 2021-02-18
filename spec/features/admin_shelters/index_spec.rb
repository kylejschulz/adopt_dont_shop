require 'rails_helper'


RSpec.describe 'As a visitor' do
  describe "When I visit the admin shelter index ('/admin/shelters')" do
    before(:each) do
      @shelter_1 = create(:shelter, name: 'AAAAA')
      @shelter_2 = create(:shelter, name: 'aaaaa')
      @shelter_3 = create(:shelter, name: 'zzzzz')
      @shelter_4 = create(:shelter, name: 'ZZZZZ')
    end

    it "Then I see all Shelters in the system listed in reverse alphabetical order by name" do
        visit "/admin/shelters"

        expect(@shelter_4.name).to be_before(@shelter_1.name)
        expect(@shelter_1.name).to be_before(@shelter_3.name)
        expect(@shelter_3.name).to be_before(@shelter_2.name)
    end
  end
end




# Admin Shelters Index
#
# As a visitor
# When I visit the admin shelter index ('/admin/shelters')
# Then I see all Shelters in the system listed in reverse alphabetical order by name
