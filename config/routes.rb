Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies, except: [:edit, :update]
  resources :buildings
  resources :offices, only:[:show]
  resources :employees, except:[:index, :new]
  get 'companies/:id/employees/new', to: 'companies#new_employee', as: 'new_employee'
  

end
