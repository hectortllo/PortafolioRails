Rails.application.routes.draw do
  #Creando nuestras propias rutas para una página en particular. Las siguientes dos líneas:
  resources :portfolios, except: [:show]
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"

  get "about-me", to: "pages#about"
  get "contact", to: "pages#contact"
  
  resources :blogs
  
  root to: "pages#home"
end
