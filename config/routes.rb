Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'files', to: 'files#index'
  get 'files/new', to: 'files#new'
  post 'files/new', to: 'files#create'
  get 'files/:name', to: 'files#show', as: 'file'
end
