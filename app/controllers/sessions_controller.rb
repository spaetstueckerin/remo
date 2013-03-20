class SessionsController < ApplicationController
  def new
  end
  
  def create
    user=User.find_by_username(params[:username])
    logger.info("Passwort: #{params[:password]}")
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      logger.info("Anmeldung erfolgreich")
      redirect_to "/welcome/index", notice: "Sie haben sich erfolgreich angemeldet!"
    else
      flash.now.alert ="Fehlerhafte E-Mail-Adresse oder Passwort"
      render "new"
      logger.info("Anmeldung fehlgeschlagen!")
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Sie haben sich erfolgreich abgemeldet!"
  end
end
