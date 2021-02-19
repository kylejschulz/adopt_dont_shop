class AdminSheltersController < ApplicationController

  def index
    @shelters = Shelter.sort_alpha
    @pending_shelters = Shelter.pending
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

end
