class ApplicationController < ActionController::Base

    #Ejecutar esto antes que cualquier otra cosa
    before_action :configure_permitted_parameters, if: :devise_controller?

    #Método para permitir el paso del parámetro del nombre en el registro de usuarios
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
    
end
