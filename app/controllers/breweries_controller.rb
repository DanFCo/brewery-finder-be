class BreweriesController < ApplicationController




def index

  breweries = Brewery.all
  render json: breweries

end

def show

brewery = Brewery.find(params[:id])

render json: brewery


end












end #---------end of controller-----------------
