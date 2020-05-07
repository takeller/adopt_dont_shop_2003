class PetsController < ApplicationController

  def index
    if params[:shelter_id]
      @pets = Shelter.find(params[:shelter_id]).pets
    else
      @pets = Pet.all
    end 
  end
end
