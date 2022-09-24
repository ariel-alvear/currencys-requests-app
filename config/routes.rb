Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/home/uf_value', to: 'home#uf_value'
  get '/home/dolar_value', to: 'home#dolar_value'

  root "home#index"
end
