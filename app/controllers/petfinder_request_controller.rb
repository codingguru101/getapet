class PetfinderRequestController < ApplicationController
  include PetfinderRequestHelper

  def search
    if logged_in?
      query = params[:search]
<<<<<<< HEAD
      arg = ["cat"]
=======
      arg = params[:animal]
>>>>>>> 9da62d85c6d14ae3e67eae7e3caacd64a8e97405
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
