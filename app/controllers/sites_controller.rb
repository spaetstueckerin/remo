class SitesController < ApplicationController
  
  @compressedAirProductions = CompressedAirProduction.find(:all)
  
end
