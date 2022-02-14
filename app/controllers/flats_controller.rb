require 'open-uri'
class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    @id = params[:id].to_i
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(URI.open(url).read)

    @flat = flats.find do |flat|
      flat["id"].to_i == @id
    end
  end
end
