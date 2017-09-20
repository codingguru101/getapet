module PetfinderRequestHelper

  #build a list of pets from our API response
  def parse_response
    begin
    if @response
      @response.each do |pet|
        Pet.create_with(id: pet.id,name: pet.name, animal: pet.animal, shelter_id: pet.shelter_id,sex: pet.sex, size: pet.size, description: pet.description,status: pet.status, contact: pet.contact)
      end
    end
  end
  rescue => e
    raise NoMethodError.new("There are no results")
  end
end
