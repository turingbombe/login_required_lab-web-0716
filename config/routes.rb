Rails.application.routes.draw do

   get '/', to: 'sessions#index', as: 'sessions'

   get '/new', to: 'sessions#new', as: 'new_session'

   post '/sessions/', to: 'sessions#create', as: 'sessions_create'

   get '/secrets', to: 'secrets#show', as: 'secret'

   delete '/sessions', to: 'sessions#destroy'
end
