class ApplicationController < ActionController::Base

    #Ejecutar esto antes que cualquier otra cosa
    include DeviseWhitelist
end
