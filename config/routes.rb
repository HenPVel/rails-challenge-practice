Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies, :buildings
  resources :offices, only:[:show]
  resources :employees, except:[:index]


end
