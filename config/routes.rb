Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'employees#home'
  delete 'delete', to:'employees#delete'
  get 'update', to:'employees#update'
  resources :employees
  
end
