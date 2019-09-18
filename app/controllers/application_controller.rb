class ApplicationController < ActionController::Base

    #Ejecutar esto antes que cualquier otra cosa
    include DeviseWhitelist

    before_action :set_source

    def set_source
        session[:source] = params[:q] if params[:q]
    end
end
