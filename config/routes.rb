Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :new, :create] do
  resources :doses, only: [:index, :create, :new]
end
  resources :doses, only: [:destroy]
end


  # get 'cocktails', to: 'cocktails#index'
  # # get all of the cocktails c, points to cocktails controller, index action, and then index view
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # # get one cocktail with the params[:id], points to cocktails controller, show action, and then show view
  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
