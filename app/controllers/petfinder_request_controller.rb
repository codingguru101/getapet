class PetfinderRequestController < ApplicationController
  include PetfinderRequestHelper

  def search
    if logged_in?
      query = params[:search]
      arg = params[:animal]

      # query = "33014"
      @petfinder = Petfinder::Client.new
      @response = @petfinder.find_pets(arg, query)
      parse_response
      query = nil
      # redirect_to results_path
    else
      redirect_to login_path, notice: "You must login to make a search"
    end
  end

  def index
   if params[:search]
     search
   end
  end
end
