class SitesController < ApplicationController
  
def general
  @user = User.find(session[:user_id])
  @enterprise = Enterprise.find(@user.enterprise_id)
  
  #Finde alle Produktionsstandorte des Unternehmens
  @production_sites = ProduktionSite.find_all_by_enterprise_id(@enterprise)
  @productionLevels = ProductionLevel.find(:all)
  @compressedAirProductions = CompressedAirProduction.find(:all)
end

def internal
end
  
end
